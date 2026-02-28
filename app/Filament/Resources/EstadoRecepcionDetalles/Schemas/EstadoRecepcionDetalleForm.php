<?php

namespace App\Filament\Resources\EstadoRecepcionDetalles\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class EstadoRecepcionDetalleForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombre')
                    ->required(),
                Textarea::make('descripcion')
                    ->default(null),
                Select::make('estados_recepciones_id')
                    ->relationship('estadoRecepcion','nombre')
                    ->required(),
                Toggle::make('estado')
                    ->default(true)
            ]);
    }
}
