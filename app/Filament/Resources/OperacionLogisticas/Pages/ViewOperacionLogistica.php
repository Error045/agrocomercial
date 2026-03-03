<?php

namespace App\Filament\Resources\OperacionLogisticas\Pages;

use App\Filament\Resources\OperacionLogisticas\OperacionLogisticaResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewOperacionLogistica extends ViewRecord
{
    protected static string $resource = OperacionLogisticaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
