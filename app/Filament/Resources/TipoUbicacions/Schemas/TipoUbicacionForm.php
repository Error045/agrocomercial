<?php

namespace App\Filament\Resources\TipoUbicacions\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class TipoUbicacionForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombre')
                    ->required(),
                TextInput::make('descripcion')
                    ->default(null),
                Toggle::make('estado'),
            ]);
    }
}
