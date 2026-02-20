<?php

namespace App\Filament\Resources\TipoUbicacions\Pages;

use App\Filament\Resources\TipoUbicacions\TipoUbicacionResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewTipoUbicacion extends ViewRecord
{
    protected static string $resource = TipoUbicacionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
