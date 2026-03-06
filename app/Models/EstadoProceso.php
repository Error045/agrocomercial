<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class EstadoProceso extends Model
{
    protected $table = 'estados_procesos';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function procesos(): HasMany
    {
        return $this->hasMany(Proceso::class, 'estados_procesos_id');
    }
}
