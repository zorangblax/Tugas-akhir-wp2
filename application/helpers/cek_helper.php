<!--Kenapa gak pake $this karena udah diluar MVC jadinya pake get_instance() buat ganti $this-->
<?php
function ceklogin()
{

    $ini = get_instance();

    if (!$ini->session->userdata('email')) {
        redirect('auth');
    } else {
        $role_id = $ini->session->userdata('role_id');
        $menu = $ini->uri->segment(1);
        $querymenu = $ini->db->get_where('user_menu', ['menu' => $menu])->row_array();
        $menu_id = $querymenu['id'];
        $useraccess = $ini->db->get_where('user_access_menu', [
            'role_id' => $role_id,
            'menu_id' => $menu_id
        ]);

        if ($useraccess->num_rows() < 1) {
            redirect('auth/block');
        }
    }
}
