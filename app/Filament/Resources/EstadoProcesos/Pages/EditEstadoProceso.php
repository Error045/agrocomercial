<?php

namespace App\Filament\Resources\EstadoProcesos\Pages;

use App\Filament\Resources\EstadoProcesos\EstadoProcesoResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditEstadoProceso extends EditRecord
{
    protected static string $resource = EstadoProcesoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
