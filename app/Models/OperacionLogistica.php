<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OperacionLogistica extends Model
{
    protected $table = 'operaciones_logisticas';

    protected $fillable = [
        'nombre',
        'prefijo',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
