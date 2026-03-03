<?php

namespace App\Filament\Resources\OperacionLogisticas\Pages;

use App\Filament\Resources\OperacionLogisticas\OperacionLogisticaResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditOperacionLogistica extends EditRecord
{
    protected static string $resource = OperacionLogisticaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
