<?php
defined('BASEPATH') or exit('No direct script access allowed');

class admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('news_model');
        ceklogin();
    }

    public function index()
    {
        $data['title'] = 'Post Berita';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['news'] = $this->news_model->get_news();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/post', $data);
        $this->load->view('templates/footer');
    }



    public function tambah()
    {
        $data['title'] = 'Post Berita';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['news'] = $this->news_model->get_news();

        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('body', 'Body', 'required');
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/created', $data);
            $this->load->view('templates/footer');
        } else {
            $this->news_model->save_news();
            redirect('admin');
        }
    }

    public function hapus_data($id)
    {
        $this->news_model->hapus_data($id);
        redirect('admin');
    }

    public function edit_data($id)
    {
        $data['title'] = 'Post Berita';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['news'] = $this->news_model->edit_news($id);

        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('body', 'Body', 'required');
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/edit_berita', $data);
            $this->load->view('templates/footer');
        } else {
            redirect('admin/save_edit');
        }
    }

    public function save_edit()
    {
        $this->load->library('upload'); // Load upload library

        // Atur file di upload
        $config['upload_path'] = './assets/img/news/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 6040;
        $this->upload->initialize($config); // di Initialize upload

        if (!$this->upload->do_upload('image')) { //baris ini buat upload gambar baru tapi sebelum itu di cek
            // apakah dia mau ngubah gambar lama atau tidak
            if ($_FILES['image']['size'] == 0 && $_FILES['image']['error'] == 4) //$_FILES['image']['size'] == 0 memeriksa apakah ukuran file yang diunggah adalah 0 byte. 
            // $_FILES['image']['error'] == 4 teru kalo ini kalo kode error 4 itu  menunjukkan bahwa tidak ada file yang diunggah.
            {
                // jika if diatas berhasil jalanin kodingan dibawah
                $id = $this->input->post('id');
                $title = $this->input->post('title');
                $data = [
                    'title' => $this->input->post('title'),
                    'id_kategori' => $this->input->post('category'),
                    'body' => $this->input->post('body'),
                    'slug' => url_title($title)
                    // nah disini gk ada image
                ];

                $this->news_model->save_edit_news($id, $data); // Update data tanpa ganti image
                redirect('admin/');
            } else {
                $error = array('error' => $this->upload->display_errors());
            }
        } else {
            // Get upload data
            $upload_data = $this->upload->data(); //data disini berisi tentang upload an nya

            // ambil gambar yg ada
            $id = $this->input->post('id');
            $existing_image = $this->news_model->get_image_name($id); //mendapatkan nama gambar terkait dengan ID yang ada di model news_model

            // apus gambar yang telah di ganti
            if ($existing_image && file_exists('./assets/img/news/' . $existing_image)) {
                unlink('./assets/img/news/' . $existing_image);
            }

            // Update news data including the new image
            $title = $this->input->post('title');
            $data = [
                'title' => $this->input->post('title'),
                'body' => $this->input->post('body'),
                'slug' => url_title($title),
                'image' => $upload_data['file_name'] // New file name
            ];
            $this->news_model->save_edit_news($id, $data);
            redirect('admin/');
        }
    }
}
