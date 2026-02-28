<?php

namespace App\Filament\Resources\EstadoProcesos\Pages;

use App\Filament\Resources\EstadoProcesos\EstadoProcesoResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEstadoProcesos extends ListRecords
{
    protected static string $resource = EstadoProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
