<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Persona extends Model
{
    //
    protected $fillable = [
        'rut',
        'nombre',
        'empresa',
        'telefono',
        'email',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function recepciones(): HasMany
    {
        return $this->hasMany(Recepcion::class, 'personas_id');
    }
}
