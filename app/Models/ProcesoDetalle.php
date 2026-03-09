<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProcesoDetalle extends Model
{
    protected $table = 'procesos_detalles';

    protected $fillable = [
        'procesos_id',
        'kilos',
        'contenedores_id',
        'fecha',
        'hora',
        'productos_id',
        'variedades_id',
        'estados_procesos_detalles_id',
        'users_id',
        'estado'
    ];

    protected $casts = [
        'hora' => 'datetime:H:i',
        'estado' => 'boolean',
    ];

    public function proceso(): BelongsTo
    {
        return $this->belongsTo(Proceso::class, 'procesos_id');
    }

    public function contenedor(): BelongsTo
    {
        return $this->belongsTo(Contenedor::class, 'contenedores_id');
    }

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class, 'productos_id');
    }

    public function variedad(): BelongsTo
    {
        return $this->belongsTo(Variedad::class, 'variedades_id');
    }

    public function estadoProcesoDetalle(): BelongsTo
    {
        return $this->belongsTo(EstadoProcesoDetalle::class, 'estados_procesos_detalles_id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'users_id');
    }
}
