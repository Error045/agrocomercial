<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Recepcion extends Model
{
    protected $table = 'recepciones';

    protected $fillable = [
        'tipos_recepciones_id',
        'personas_id',
        'fecha',
        'hora',
        'estados_recepciones_id',
        'users_id',
        'estado'
    ];

    protected $casts = [
        'fecha' => 'date',
        'hora' => 'datetime:H:i',
        'estado' => 'boolean',
    ];

    public function tipoRecepcion(): BelongsTo
    {
        return $this->belongsTo(TipoRecepcion::class, 'tipos_recepciones_id');
    }

    public function persona(): BelongsTo
    {
        return $this->belongsTo(Persona::class, 'personas_id');
    }

    public function estadoRecepcion(): BelongsTo
    {
        return $this->belongsTo(EstadoRecepcion::class, 'estados_recepciones_id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'users_id');
    }

    public function detalles(): HasMany
    {
        return $this->hasMany(RecepcionDetalle::class, 'recepciones_id');
    }

}
