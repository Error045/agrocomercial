<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoRecepcion extends Model
{
    //
     protected $table = 'tipos_recepciones';

     protected $fillable = [
        'tipo',
        'descripcion',
        'estado'
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
