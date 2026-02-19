<?php

namespace App\Filament\Resources\TipoRecepcions\Pages;

use App\Filament\Resources\TipoRecepcions\TipoRecepcionResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewTipoRecepcion extends ViewRecord
{
    protected static string $resource = TipoRecepcionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
