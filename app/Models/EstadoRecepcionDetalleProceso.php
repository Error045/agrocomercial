<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class EstadoRecepcionDetalleProceso extends Model
{
    protected $table = 'estados_recepciones_detalles_procesos';

    protected $fillable = [
        'nombre',
        'descripcion',
        'estado',
    ];

    protected $casts = [
        'estado' => 'boolean',
    ];

    public function recepcionesDetalleProcesos(): HasMany
    {
        return $this->hasMany(RecepcionDetalleProceso::class, 'estado_r_d_p_id');
    }
}
