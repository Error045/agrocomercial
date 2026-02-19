<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    //
    protected $fillable = [
        'rut',
        'nombre',
        'empresa',
        'telefono',
        'email',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];
}
