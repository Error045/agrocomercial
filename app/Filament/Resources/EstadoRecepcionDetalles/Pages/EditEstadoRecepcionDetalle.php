<?php

namespace App\Filament\Resources\EstadoRecepcionDetalles\Pages;

use App\Filament\Resources\EstadoRecepcionDetalles\EstadoRecepcionDetalleResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditEstadoRecepcionDetalle extends EditRecord
{
    protected static string $resource = EstadoRecepcionDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
