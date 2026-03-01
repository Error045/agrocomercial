<?php

namespace App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages;

use App\Filament\Resources\EstadoRecepcionDetalleProcesos\EstadoRecepcionDetalleProcesoResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditEstadoRecepcionDetalleProceso extends EditRecord
{
    protected static string $resource = EstadoRecepcionDetalleProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
