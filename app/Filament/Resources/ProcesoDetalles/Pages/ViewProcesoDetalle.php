<?php

namespace App\Filament\Resources\ProcesoDetalles\Pages;

use App\Filament\Resources\ProcesoDetalles\ProcesoDetalleResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewProcesoDetalle extends ViewRecord
{
    protected static string $resource = ProcesoDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
