<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class RecepcionDetalle extends Model
{
    protected $table = 'recepciones_detalles';

    protected $fillable = [
        'productos_id',
        'variedades_id',
        'contenedores_id',
        'recepciones_id',
        'operaciones_logisticas_id',
        'ciclo',
        'etiqueta_ciclo',
        'hora',
        'kilos_bruto',
        'kilos_neto',
        'tipos_ubicaciones_id',
        'estados_recepciones_detalles_id',
        'users_id',
        'x',
        'y',
        'z',
        'estado'
    ];

    protected $casts = [
        'hora' => 'datetime:H:i',
        'estado' => 'boolean',
    ];

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class, 'productos_id');
    }

     public function variedad(): BelongsTo
    {
        return $this->belongsTo(Variedad::class, 'variedades_id');
    }

     public function contenedor(): BelongsTo
    {
        return $this->belongsTo(Contenedor::class, 'contenedores_id');
    }

    public function recepcion(): BelongsTo
    {
        return $this->belongsTo(Recepcion::class, 'recepciones_id');
    }

    public function operacionLogistica(): BelongsTo
    {
        return $this->belongsTo(OperacionLogistica::class, 'operaciones_logisticas_id');
    }

    public function tipoUbicacion(): BelongsTo
    {
        return $this->belongsTo(TipoUbicacion::class, 'tipos_ubicaciones_id');
    }

    public function estadoRecepcionDetalle(): BelongsTo
    {
        return $this->belongsTo(EstadoRecepcionDetalle::class, 'estados_recepciones_detalles_id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'users_id');
    }
}
