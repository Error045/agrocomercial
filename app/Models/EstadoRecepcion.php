<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class EstadoRecepcion extends Model
{
    protected $table = 'estados_recepciones';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function detalles(): HasMany
    {
        return $this->hasMany(EstadoRecepcionDetalle::class, 'estados_recepciones_id');
    }

    public function recepciones(): HasMany
    {
        return $this->hasMany(Recepcion::class, 'estados_recepciones_id');
    }
}
