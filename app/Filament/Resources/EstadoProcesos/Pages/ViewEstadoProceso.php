<?php

namespace App\Filament\Resources\EstadoProcesos\Pages;

use App\Filament\Resources\EstadoProcesos\EstadoProcesoResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewEstadoProceso extends ViewRecord
{
    protected static string $resource = EstadoProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
