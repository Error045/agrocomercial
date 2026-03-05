<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class TipoUbicacion extends Model
{
    protected $table = 'tipos_ubicaciones';

     protected $fillable = [
        'nombre',
        'descripcion',
        'estado'
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function recepcionesDetalles(): HasMany
    {
        return $this->hasMany(RecepcionDetalle::class, 'tipos_ubicaciones_id');
    }
}
