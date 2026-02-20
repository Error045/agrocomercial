<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoUbicacion extends Model
{
    protected $table = 'tipos_ubicaciones';

     protected $fillable = [
        'nombre',
        'descripcion',
        'estado'
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
