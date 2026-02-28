<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class EstadoRecepcionDetalle extends Model
{
    protected $table = 'estados_recepciones_detalles';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estados_recepciones_id',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function estadoRecepcion(): BelongsTo
    {
        return $this->belongsTo(EstadoRecepcion::class, 'estados_recepciones_id');
    }
}
