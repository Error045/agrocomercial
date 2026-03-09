<?php

namespace App\Filament\Resources\ProcesoDetalles\Pages;

use App\Filament\Resources\ProcesoDetalles\ProcesoDetalleResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListProcesoDetalles extends ListRecords
{
    protected static string $resource = ProcesoDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
