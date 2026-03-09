<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class RecepcionDetalleProceso extends Model
{
    protected $table = 'recepciones_detalles_procesos';

    protected $fillable = [
        'recepciones_detalles_id',
        'procesos_id',
        'fecha',
        'hora',
        'estado_r_d_p_id',
        'users_id',
        'estado'
    ];

    protected $casts = [
        'hora' => 'datetime:H:i',
        'estado' => 'boolean',
    ];

    public function recepcionDetalle(): BelongsTo
    {
        return $this->belongsTo(RecepcionDetalle::class, 'recepciones_detalles_id');
    }

    public function proceso(): BelongsTo
    {
        return $this->belongsTo(Proceso::class, 'procesos_id');
    }

    public function estadoRdp(): BelongsTo
    {
        return $this->belongsTo(EstadoRecepcionDetalleProceso::class, 'estado_r_d_p_id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'users_id');
    }
}
