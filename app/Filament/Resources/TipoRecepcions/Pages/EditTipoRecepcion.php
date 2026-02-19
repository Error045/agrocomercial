<?php

namespace App\Filament\Resources\TipoRecepcions\Pages;

use App\Filament\Resources\TipoRecepcions\TipoRecepcionResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditTipoRecepcion extends EditRecord
{
    protected static string $resource = TipoRecepcionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
