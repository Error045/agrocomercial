<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EstadoRecepcion extends Model
{
    protected $table = 'estados_recepciones';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
