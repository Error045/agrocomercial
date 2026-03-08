<?php

namespace App\Filament\Resources\EstadoProcesoDetalles\Pages;

use App\Filament\Resources\EstadoProcesoDetalles\EstadoProcesoDetalleResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEstadoProcesoDetalles extends ListRecords
{
    protected static string $resource = EstadoProcesoDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
