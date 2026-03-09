<?php

namespace App\Filament\Resources\RecepcionDetalleProcesos\Pages;

use App\Filament\Resources\RecepcionDetalleProcesos\RecepcionDetalleProcesoResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditRecepcionDetalleProceso extends EditRecord
{
    protected static string $resource = RecepcionDetalleProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
