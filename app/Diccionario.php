<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Diccionario extends Model
{
    protected $table = 'diccionario';

    protected $primarykey = 'palabra';

    public $timestamps = false;

}
