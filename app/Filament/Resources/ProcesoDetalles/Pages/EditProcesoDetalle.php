<?php

namespace App\Filament\Resources\ProcesoDetalles\Pages;

use App\Filament\Resources\ProcesoDetalles\ProcesoDetalleResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditProcesoDetalle extends EditRecord
{
    protected static string $resource = ProcesoDetalleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
