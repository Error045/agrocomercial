<?php

namespace App\Filament\Resources\EstadoRecepcions\Pages;

use App\Filament\Resources\EstadoRecepcions\EstadoRecepcionResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewEstadoRecepcion extends ViewRecord
{
    protected static string $resource = EstadoRecepcionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
