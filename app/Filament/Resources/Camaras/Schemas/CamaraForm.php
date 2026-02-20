<?php

namespace App\Filament\Resources\Camaras\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class CamaraForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombre')
                    ->default(null),
                TextInput::make('tamano')
                    ->default(null),
                TextInput::make('capacidad')
                    ->numeric()
                    ->default(null),
                Toggle::make('estado'),
            ]);
    }
}
