<?php

namespace App\Filament\Resources\ProductoCalibrados\Pages;

use App\Filament\Resources\ProductoCalibrados\ProductoCalibradoResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListProductoCalibrados extends ListRecords
{
    protected static string $resource = ProductoCalibradoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
