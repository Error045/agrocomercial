<?php

namespace App\Filament\Resources\EstadoProcesoDetalles\Pages;

use App\Filament\Resources\EstadoProcesoDetalles\EstadoProcesoDetalleResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewEstadoProcesoDetalle extends ViewRecord
{
    protected static string $resource = EstadoProcesoDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
