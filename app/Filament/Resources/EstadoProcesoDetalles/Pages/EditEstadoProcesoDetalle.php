<?php

namespace App\Filament\Resources\EstadoProcesoDetalles\Pages;

use App\Filament\Resources\EstadoProcesoDetalles\EstadoProcesoDetalleResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditEstadoProcesoDetalle extends EditRecord
{
    protected static string $resource = EstadoProcesoDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
