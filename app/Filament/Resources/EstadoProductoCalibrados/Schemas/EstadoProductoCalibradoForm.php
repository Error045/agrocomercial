<?php

namespace App\Filament\Resources\EstadoProductoCalibrados\Schemas;

use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class EstadoProductoCalibradoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombre')
                    ->required(),
                Textarea::make('descripcion')
                    ->default(null),
                Toggle::make('estado')
                    ->default(true),
            ]);
    }
}
