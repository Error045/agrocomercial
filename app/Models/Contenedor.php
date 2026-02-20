<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contenedor extends Model
{
    protected $table = 'contenedores';

    protected $fillable = [
        'nombre',
        'tara',
        'capacidad',
        'material',
        'dimensiones',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
