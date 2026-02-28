<?php

namespace App\Filament\Resources\EstadoRecepcionDetalles\Pages;

use App\Filament\Resources\EstadoRecepcionDetalles\EstadoRecepcionDetalleResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewEstadoRecepcionDetalle extends ViewRecord
{
    protected static string $resource = EstadoRecepcionDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
