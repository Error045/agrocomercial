<?php

namespace App\Filament\Resources\EstadoRecepcionDetalles\Pages;

use App\Filament\Resources\EstadoRecepcionDetalles\EstadoRecepcionDetalleResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEstadoRecepcionDetalles extends ListRecords
{
    protected static string $resource = EstadoRecepcionDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
