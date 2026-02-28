<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EstadoProductoCalibrado extends Model
{
    protected $table = 'estados_productos_calibrados';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
