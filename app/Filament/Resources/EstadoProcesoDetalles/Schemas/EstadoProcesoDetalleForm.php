<?php

namespace App\Filament\Resources\EstadoProcesoDetalles\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class EstadoProcesoDetalleForm
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
