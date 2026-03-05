<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

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

    public function recepcionesDetalles(): HasMany
    {
        return $this->hasMany(RecepcionDetalle::class, 'contenedores_id');
    }
}
