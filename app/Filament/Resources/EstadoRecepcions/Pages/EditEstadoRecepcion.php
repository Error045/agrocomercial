<?php

namespace App\Filament\Resources\EstadoRecepcions\Pages;

use App\Filament\Resources\EstadoRecepcions\EstadoRecepcionResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditEstadoRecepcion extends EditRecord
{
    protected static string $resource = EstadoRecepcionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
