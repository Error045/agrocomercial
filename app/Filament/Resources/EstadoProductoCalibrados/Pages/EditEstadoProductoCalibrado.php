<?php

namespace App\Filament\Resources\EstadoProductoCalibrados\Pages;

use App\Filament\Resources\EstadoProductoCalibrados\EstadoProductoCalibradoResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditEstadoProductoCalibrado extends EditRecord
{
    protected static string $resource = EstadoProductoCalibradoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
