<?php

namespace App\Filament\Resources\EstadoRecepcions\Pages;

use App\Filament\Resources\EstadoRecepcions\EstadoRecepcionResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEstadoRecepcions extends ListRecords
{
    protected static string $resource = EstadoRecepcionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
