<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class fakeDirectory extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'nameDirectory'=>'Bất Động Sản '
            ],
            [
                'nameDirectory'=>'Người Lao Động '
            ],
            [
                'nameDirectory'=>'Thế Giới '
            ],
            [
                'nameDirectory'=>'Chính Trị'
            ],
        ];
        DB::table('directory')->insert($data);
    }
}
