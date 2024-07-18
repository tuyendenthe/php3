<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class fakePosts extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [];
        for ($i = 0; $i < 20; $i++) {
            $data[] = [
                'title' => 'Trần Văn Tuyền PH40779  ',
                'body1' => 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.',

                'body2' => 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ',
                'img' => 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg',
                'idTag' => '1',
                'dateCreated' => now(),
                'created_at' => now(),
                'updated_at' => now(),

            ];
        }
        DB::table('posts')->insert($data);
    }
}
