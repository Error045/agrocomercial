<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Variedad extends Model
{
    protected $table = 'variedades';
    
    protected $fillable = [
        'nombre',
        'descripcion',
        'producto_id',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class);
    }

    public function recepcionesDetalles(): HasMany
    {
        return $this->hasMany(RecepcionDetalle::class, 'variedades_id');
    }
}
