<?php

namespace App\Filament\Resources\Contenedors\Pages;

use App\Filament\Resources\Contenedors\ContenedorResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditContenedor extends EditRecord
{
    protected static string $resource = ContenedorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
