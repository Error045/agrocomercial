<?php

namespace App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages;

use App\Filament\Resources\EstadoRecepcionDetalleProcesos\EstadoRecepcionDetalleProcesoResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewEstadoRecepcionDetalleProceso extends ViewRecord
{
    protected static string $resource = EstadoRecepcionDetalleProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
