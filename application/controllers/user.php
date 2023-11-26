<?php
defined('BASEPATH') or exit('No direct script access allowed');

class user extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        ceklogin();
    }

    public function index()
    {
        $data['title'] = 'My Profile';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }

    public function editprofile()
    {
        $data['title'] = 'Edit Profile';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('name', 'Full name', 'required|trim');
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/edit', $data);
            $this->load->view('templates/footer');
        } else {
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            //kalo ada gambar yg pengen di upload
            $upload_image = $_FILES['image']['name'];
            if ($upload_image) {
                $config['upload_path']          = './assets/img/profile/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg';
                $config['max_size']             = 6048;
                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $old_image = $data['user']['image'];
                    if ($old_image != 'default.jpg') {
                        unlink(FCPATH . 'assets/img/profile/' . $old_image); //FCPATH untuk mengetahui file namenya karena gak bisa pake base url
                    }
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('image', $new_image);
                } else {
                    echo $this->upload->display_errors();
                }
            }

            $this->db->set('name', $name);
            $this->db->where('email', $email);
            $this->db->update('user');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
			  Profile berhasil di edit
			</div>');
            redirect('user');
        }
    }

    public function changepassword()
    {

        $data['title'] = 'Change Password';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('current_password', 'password lama', 'required|trim');
        $this->form_validation->set_rules('new_password1', 'password baru', 'required|trim|min_length[8]|matches[new_password2]');
        $this->form_validation->set_rules('new_password2', 'password_baru2', 'required|trim|matches[new_password1]|min_length[8]');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/changepassword', $data);
            $this->load->view('templates/footer');
        } else {
            $current_password = $this->input->post('current_password');
            $new = $this->input->post('new_password1');

            if (!password_verify($current_password, $data['user']['password'])) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
			  Password lama salah!
			</div>');
                redirect('user/changepassword');
            } else {
                if ($current_password == $new) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Password lama tidak boleh sama dengan password baru
                  </div>');
                    redirect('user/changepassword');
                } else {
                    //password bener
                    $encrypt = password_hash($new, PASSWORD_DEFAULT);
                    $this->db->set('password', $encrypt);
                    $this->db->where('email', $this->session->userdata('email'));
                    $this->db->update('user');
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                    Password telah diganti  
                  </div>');
                    redirect('user/changepassword');
                }
            }
        }
    }
}
