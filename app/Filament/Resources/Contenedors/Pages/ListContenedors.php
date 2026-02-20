<?php

namespace App\Filament\Resources\Contenedors\Pages;

use App\Filament\Resources\Contenedors\ContenedorResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListContenedors extends ListRecords
{
    protected static string $resource = ContenedorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
