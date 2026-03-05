<?php

namespace App\Filament\Resources\RecepcionDetalles\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class RecepcionDetalleForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('productos_id')
                    ->required()
                    ->numeric(),
                TextInput::make('variedades_id')
                    ->required()
                    ->numeric(),
                TextInput::make('contenedores_id')
                    ->required()
                    ->numeric(),
                TextInput::make('recepciones_id')
                    ->required()
                    ->numeric(),
                TextInput::make('operaciones_logisticas_id')
                    ->required()
                    ->numeric(),
                TextInput::make('ciclo')
                    ->numeric()
                    ->default(null),
                TextInput::make('etiqueta_ciclo')
                    ->default(null),
                TimePicker::make('hora'),
                TextInput::make('kilos_bruto')
                    ->numeric()
                    ->default(null),
                TextInput::make('kilos_neto')
                    ->numeric()
                    ->default(null),
                TextInput::make('tipos_ubicaciones_id')
                    ->required()
                    ->numeric(),
                TextInput::make('estados_recepciones_detalles_id')
                    ->required()
                    ->numeric(),
                TextInput::make('users_id')
                    ->required()
                    ->numeric(),
                TextInput::make('x')
                    ->numeric()
                    ->default(null),
                TextInput::make('y')
                    ->numeric()
                    ->default(null),
                TextInput::make('z')
                    ->numeric()
                    ->default(null),
                Toggle::make('estado'),
            ]);
    }
}
