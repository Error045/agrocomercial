<?php

namespace App\Filament\Resources\TipoRecepcions\Pages;

use App\Filament\Resources\TipoRecepcions\TipoRecepcionResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListTipoRecepcions extends ListRecords
{
    protected static string $resource = TipoRecepcionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
