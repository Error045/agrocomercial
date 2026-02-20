<?php

namespace App\Filament\Resources\Contenedors\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class ContenedorForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombre')
                    ->default(null),
                TextInput::make('tara')
                    ->numeric()
                    ->default(null),
                TextInput::make('capacidad')
                    ->numeric()
                    ->default(null),
                TextInput::make('material')
                    ->default(null),
                TextInput::make('dimensiones')
                    ->default(null),
                TextInput::make('descripcion')
                    ->default(null),
                Toggle::make('estado'),
            ]);
    }
}
