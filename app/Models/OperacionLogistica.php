<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

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

    public function recepcionesDetalles(): HasMany
    {
        return $this->hasMany(RecepcionDetalle::class, 'operaciones_logisticas_id');
    }
}
