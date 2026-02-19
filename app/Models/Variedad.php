<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

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

    // 🎯 Relación: Una variedad pertenece a un producto
    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class);
    }
}
