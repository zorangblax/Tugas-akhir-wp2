<?php
defined('BASEPATH') or exit('No direct script access allowed');

class sewa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        ceklogin();
    }

    public function index()
    {
        $data['title'] = 'Booking';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('sewa/index', $data);
        $this->load->view('templates/footer');
    }
}
