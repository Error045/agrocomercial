<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProductoCalibrado extends Model
{
    protected $table = 'productos_calibrados';

    protected $fillable = [
        'procesos_id',
        'recepciones_id',
        'productos_id',
        'variedades_id',
        'calibres_id',
        'ciclo',
        'operaciones_logisticas_id',
        'etiqueta_ciclo',
        'fecha',
        'hora',
        'tipos_ubicaciones_id',
        'estados_productos_calibrados_id',
        'users_id',
        'x',
        'y',
        'z',
        'estado'
    ];

    protected $casts = [
        'hora' => 'datetime:H:i',
        'estado' => 'boolean',
    ];

    public function proceso(): BelongsTo
    {
        return $this->belongsTo(Proceso::class, 'procesos_id');
    }

    public function recepcion(): BelongsTo
    {
        return $this->belongsTo(Recepcion::class, 'recepciones_id');
    }

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class, 'productos_id');
    }

    public function variedad(): BelongsTo
    {
        return $this->belongsTo(Variedad::class, 'variedades_id');
    }

    public function calibre(): BelongsTo
    {
        return $this->belongsTo(Calibre::class, 'calibres_id');
    }

    public function operacionLogistica(): BelongsTo
    {
        return $this->belongsTo(OperacionLogistica::class, 'operaciones_logisticas_id');
    }

    public function tipoUbicacion(): BelongsTo
    {
        return $this->belongsTo(TipoUbicacion::class, 'tipos_ubicaciones_id');
    }

    public function estadoProductoCalibrado(): BelongsTo
    {
        return $this->belongsTo(EstadoProductoCalibrado::class, 'estados_productos_calibrados_id');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'users_id');
    }
}
