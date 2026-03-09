<?php

namespace App\Filament\Resources\ProductoCalibrados\Pages;

use App\Filament\Resources\ProductoCalibrados\ProductoCalibradoResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditProductoCalibrado extends EditRecord
{
    protected static string $resource = ProductoCalibradoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
