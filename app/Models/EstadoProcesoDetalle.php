<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

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

    public function procesosDetalles(): HasMany
    {
        return $this->hasMany(ProcesoDetalle::class, 'estados_procesos_detalles_id');
    }
}
