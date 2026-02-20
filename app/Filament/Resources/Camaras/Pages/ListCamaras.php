<?php

namespace App\Filament\Resources\Camaras\Pages;

use App\Filament\Resources\Camaras\CamaraResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListCamaras extends ListRecords
{
    protected static string $resource = CamaraResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
