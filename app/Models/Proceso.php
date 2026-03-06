<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Proceso extends Model
{
    protected $table = 'procesos';

     protected $fillable = [
        'recepciones_id',
        'fecha',
        'hora',
        'descripcion',
        'estados_procesos_id',
        'users_id',
        'estado'

    ];

    protected $casts = [
        'fecha' => 'date',
        'hora' => 'datetime:H:i', 
        'estado' => 'boolean',
    ];

    public function recepcion(): BelongsTo
    {
        return $this->belongsTo(Recepcion::class, 'recepciones_id');
    }

    public function estadoProceso(): BelongsTo
    {
        return $this->belongsTo(EstadoProceso::class, 'estados_procesos_id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'users_id');
    }
}
