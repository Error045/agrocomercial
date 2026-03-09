<?php

namespace App\Filament\Resources\RecepcionDetalleProcesos\Pages;

use App\Filament\Resources\RecepcionDetalleProcesos\RecepcionDetalleProcesoResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListRecepcionDetalleProcesos extends ListRecords
{
    protected static string $resource = RecepcionDetalleProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
