<?php

namespace App\Filament\Resources\OperacionLogisticas\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class OperacionLogisticaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombre')
                    ->required(),
                TextInput::make('prefijo')
                    ->default(null),
                Textarea::make('descripcion')
                    ->default(null)
                    ->columnSpanFull(),
                Toggle::make('estado'),
            ]);
    }
}
