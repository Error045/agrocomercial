<?php

namespace App\Filament\Resources\RecepcionDetalles\Pages;

use App\Filament\Resources\RecepcionDetalles\RecepcionDetalleResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditRecepcionDetalle extends EditRecord
{
    protected static string $resource = RecepcionDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
