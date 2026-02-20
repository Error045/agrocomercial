<?php

namespace App\Filament\Resources\Contenedors\Pages;

use App\Filament\Resources\Contenedors\ContenedorResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewContenedor extends ViewRecord
{
    protected static string $resource = ContenedorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
