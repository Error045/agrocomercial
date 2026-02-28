<?php

namespace App\Filament\Resources\EstadoProductoCalibrados\Pages;

use App\Filament\Resources\EstadoProductoCalibrados\EstadoProductoCalibradoResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewEstadoProductoCalibrado extends ViewRecord
{
    protected static string $resource = EstadoProductoCalibradoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
