<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EstadoProcesoDetalle extends Model
{
    protected $table = 'estados_procesos_detalles';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
