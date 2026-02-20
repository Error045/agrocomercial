<?php

namespace App\Filament\Resources\Camaras\Pages;

use App\Filament\Resources\Camaras\CamaraResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewCamara extends ViewRecord
{
    protected static string $resource = CamaraResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
