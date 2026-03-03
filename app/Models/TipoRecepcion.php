<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class TipoRecepcion extends Model
{
    //
     protected $table = 'tipos_recepciones';

     protected $fillable = [
        'tipo',
        'descripcion',
        'estado'
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function recepciones(): HasMany
    {
        return $this->hasMany(Recepcion::class, 'tipos_recepciones_id');
    }
}
