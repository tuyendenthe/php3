<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class directory extends Model
{
    use HasFactory;
    protected $fillable = [
        'nameDirectory'

    ];
    public function posts()
    {
        return $this->hasMany(posts::class);
    }

    public function post()
    {
        return $this->hasOne(posts::class);
    }
}
