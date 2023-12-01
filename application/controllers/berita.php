<?php
defined('BASEPATH') or exit('No direct script access allowed');

class berita extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        ceklogin();
        $this->load->model('news_model');
    }

    public function index()
    {

        $data['title'] = 'Berita';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        //pagination
        $this->load->library('pagination');
        //config
        $config['base_url'] = 'http://localhost/futsal/berita/index';
        $config['total_rows'] = $this->news_model->countAllnews();
        $config['per_page'] = 5;

        //styling pagination
        $config['full_tag_open'] = '<nav><ul class="pagination pagination-lg justify-content-center">';
        $config['full_tag_close'] = '</ul></nav>';

        $config['first_link'] = 'First';
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';

        $config['last_link'] = 'Last';
        $config['last_tag_open'] = '<li class="page-item   ">';
        $config['last_tag_close'] = '</li>';

        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li class="page-item   ">';
        $config['next_tag_close'] = '</li>';

        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="page-item   ">';
        $config['prev_tag_close'] = '</li>';

        $config['cur_tag_open'] = '<li class="page-item active  "><a class="page-link" href="#"> ';
        $config['cur_tag_close'] = '</a></li>';

        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';

        $config['attributes'] = array('class' => 'page-link');

        //initialise
        $this->pagination->initialize($config);


        $data['start'] = $this->uri->segment(3);
        $data['news'] = $this->news_model->getlistnews($config['per_page'], $data['start']);


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('berita/index', $data);
        $this->load->view('templates/footer');
    }

    public function detail($slug)
    {
        $data['title'] = 'Berita';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['news'] = $this->news_model->get_news($slug);


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('berita/detail', $data);
        $this->load->view('templates/footer');
    }
}
