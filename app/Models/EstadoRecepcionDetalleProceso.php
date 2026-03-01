<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EstadoRecepcionDetalleProceso extends Model
{
    protected $table = 'estados_recepciones_detalles_procesos';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
