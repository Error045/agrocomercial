<?php

namespace App\Filament\Resources\TipoUbicacions\Pages;

use App\Filament\Resources\TipoUbicacions\TipoUbicacionResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListTipoUbicacions extends ListRecords
{
    protected static string $resource = TipoUbicacionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
