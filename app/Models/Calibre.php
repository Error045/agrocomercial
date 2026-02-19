<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Calibre extends Model
{
    protected $table = 'calibres';

     protected $fillable = [
        'nombre',
        'descripcion',
        'producto_id',
        'estado'
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class);
    }
}
