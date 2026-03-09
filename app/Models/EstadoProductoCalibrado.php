<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class EstadoProductoCalibrado extends Model
{
    protected $table = 'estados_productos_calibrados';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function productosCalibrados(): HasMany
    {
        return $this->hasMany(ProductoCalibrado::class, 'estados_productos_calibrados_id');
    }
}
