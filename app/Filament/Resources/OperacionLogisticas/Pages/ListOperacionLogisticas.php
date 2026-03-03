<?php

namespace App\Filament\Resources\OperacionLogisticas\Pages;

use App\Filament\Resources\OperacionLogisticas\OperacionLogisticaResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListOperacionLogisticas extends ListRecords
{
    protected static string $resource = OperacionLogisticaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
