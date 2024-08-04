<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class posts extends Model
{
    use HasFactory;
    protected $fillable = [

        'title',
        'body1',
        'body2',
        'img',
        'dateCreated',
        
        'idDirectory',
        'narura',

        ];
        public function directory()
        {
            return $this->belongsTo(directory::class);
        }
}
