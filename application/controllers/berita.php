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
        $this->load->library('pagination');


        if ($this->input->post('keyword')) {
            $data['keyword'] = trim($this->input->post('keyword'));
        } else {
            $data['keyword'] = '';
        }

        $this->db->join('category', 'category.id_kategori=news.id_kategori', 'left');
        $this->db->like('title', $data['keyword']);
        $this->db->or_like('kategori', $data['keyword']);
        $this->db->from('news');
        $config['total_rows'] = $this->db->count_all_results();
        $data['total_rows'] = $config['total_rows'];
        $data['kategori'] = $this->input->post('kategori');
        $config['per_page'] = 4;

        //initialise
        $this->pagination->initialize($config);
        $data['start'] = $this->uri->segment(3);
        $data['news'] = $this->news_model->getlistnews($config['per_page'], $data['start'], $data['keyword'], $data['kategori']);
        //-pagination end


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
