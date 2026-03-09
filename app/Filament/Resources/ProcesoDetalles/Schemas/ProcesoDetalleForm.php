<?php

namespace App\Filament\Resources\ProcesoDetalles\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class ProcesoDetalleForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('procesos_id')
                    ->required()
                    ->numeric(),
                TextInput::make('kilos')
                    ->numeric()
                    ->default(null),
                TextInput::make('contenedores_id')
                    ->required()
                    ->numeric(),
                DatePicker::make('fecha'),
                TimePicker::make('hora'),
                TextInput::make('productos_id')
                    ->required()
                    ->numeric(),
                TextInput::make('variedades_id')
                    ->required()
                    ->numeric(),
                TextInput::make('estados_procesos_detalles_id')
                    ->required()
                    ->numeric(),
                TextInput::make('users_id')
                    ->required()
                    ->numeric(),
                Toggle::make('estado'),
            ]);
    }
}
