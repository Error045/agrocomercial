<?php

namespace App\Filament\Resources\EstadoProductoCalibrados\Pages;

use App\Filament\Resources\EstadoProductoCalibrados\EstadoProductoCalibradoResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEstadoProductoCalibrados extends ListRecords
{
    protected static string $resource = EstadoProductoCalibradoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
