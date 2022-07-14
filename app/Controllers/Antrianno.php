<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\AntrianModel;

class Antrianno extends Controller
{

    public function __construct()
    {

        // Mendeklarasikan class AntrianModel menggunakan $this->antrian
        $this->antrian = new AntrianModel();
    }

    public function index()
    {
        $data = [
            'title' => 'Layar Antrian'
        ];
        $data['antrian1'] = $this->antrian->getAntrianno(1);
        $data['antrian2'] = $this->antrian->getAntrianno(2);
        $data['antrian3'] = $this->antrian->getAntrianno(3);
        $data['antrian4'] = $this->antrian->getAntrianno(4);
        $data['antrianlast'] = $this->antrian->getAntrianlast(4);

        echo view('pages/antrianno/index', $data);
    }


    public function edite()
    {
        $data = [
            'title' => 'Edit'
        ];
        $data['antrian1'] = $this->antrian->getAntrianno(1);
        $data['antrian2'] = $this->antrian->getAntrianno(2);
        $data['antrian3'] = $this->antrian->getAntrianno(3);
        $data['antrian4'] = $this->antrian->getAntrianno(4);
        echo view('antrian/edit2', $data);
    }

    public function cek()
    {
        $data = [
            'title' => 'Cek'
        ];
        $data['antrianlast'] = $this->antrian->getAntrianlast(4);
        echo view('antrian/cek', $data);
    }
}
