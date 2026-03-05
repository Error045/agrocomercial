<?php

namespace App\Filament\Resources\RecepcionDetalles\Pages;

use App\Filament\Resources\RecepcionDetalles\RecepcionDetalleResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewRecepcionDetalle extends ViewRecord
{
    protected static string $resource = RecepcionDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
