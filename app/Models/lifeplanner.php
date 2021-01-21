<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class lifeplanner extends Model
{
    use HasFactory;

    protected $connection = 'mysql';
    protected $table = 'todolist';
    protected $primaryKey = 'todolistID';
    public $incrementing = true;
}
