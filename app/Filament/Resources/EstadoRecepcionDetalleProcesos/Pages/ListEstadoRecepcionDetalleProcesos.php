<?php

namespace App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages;

use App\Filament\Resources\EstadoRecepcionDetalleProcesos\EstadoRecepcionDetalleProcesoResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEstadoRecepcionDetalleProcesos extends ListRecords
{
    protected static string $resource = EstadoRecepcionDetalleProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
