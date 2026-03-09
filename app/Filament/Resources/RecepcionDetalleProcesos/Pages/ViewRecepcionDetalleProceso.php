<?php

namespace App\Filament\Resources\RecepcionDetalleProcesos\Pages;

use App\Filament\Resources\RecepcionDetalleProcesos\RecepcionDetalleProcesoResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewRecepcionDetalleProceso extends ViewRecord
{
    protected static string $resource = RecepcionDetalleProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
