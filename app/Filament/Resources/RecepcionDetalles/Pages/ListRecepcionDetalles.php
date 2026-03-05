<?php

namespace App\Filament\Resources\RecepcionDetalles\Pages;

use App\Filament\Resources\RecepcionDetalles\RecepcionDetalleResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListRecepcionDetalles extends ListRecords
{
    protected static string $resource = RecepcionDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
