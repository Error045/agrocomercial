<?php

namespace App\Filament\Resources\TipoUbicacions\Pages;

use App\Filament\Resources\TipoUbicacions\TipoUbicacionResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditTipoUbicacion extends EditRecord
{
    protected static string $resource = TipoUbicacionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
