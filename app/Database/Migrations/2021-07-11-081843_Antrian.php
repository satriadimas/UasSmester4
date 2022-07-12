<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Antrian extends Migration
{
	public function up()
	{
		
		$this->forge->addField([
        'id'            => [
                'type'                  => 'INT',
                'constraint'            => 11,
                'unsigned'              => TRUE,
                'auto_increment'        => TRUE
        ],
        'status'        => [
                'type'          => 'VARCHAR',
                'constraint'    => '50',
                'null'          => false,
        ],
        'waktu_panggil' => [
                'type'          => 'VARCHAR',
                'constraint'    => '50',
                'on update'     => 'NOW()'
        ],
        'waktu_selesai' => [
                'type'          => 'VARCHAR',
                'constraint'    => '50',
                'default'       => null,
        ],
        'pelayanan_id'  => [
                'type'          => 'INT',
                'constraint'    => '11',
        ],
        'loket_id' => [
                'type'          => 'INT',
                'constraint'    => '11',
        ],
        'antrian_last' => [
                'type'          => 'TEXT',
                'default'       => null,
        ],
    ]);
    $this->forge->addKey('id', TRUE);
    $this->forge->createTable('antrian');
	}

	public function down()
	{
		//
	}
}