<?php

namespace App\Filament\Resources\ProductoCalibrados\Pages;

use App\Filament\Resources\ProductoCalibrados\ProductoCalibradoResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewProductoCalibrado extends ViewRecord
{
    protected static string $resource = ProductoCalibradoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
