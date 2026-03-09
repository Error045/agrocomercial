<?php

namespace App\Filament\Resources\ProductoCalibrados\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class ProductoCalibradoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('procesos_id')
                    ->required()
                    ->numeric(),
                TextInput::make('recepciones_id')
                    ->required()
                    ->numeric(),
                TextInput::make('productos_id')
                    ->required()
                    ->numeric(),
                TextInput::make('variedades_id')
                    ->required()
                    ->numeric(),
                TextInput::make('calibres_id')
                    ->required()
                    ->numeric(),
                TextInput::make('ciclo')
                    ->numeric()
                    ->default(null),
                TextInput::make('operaciones_logisticas_id')
                    ->required()
                    ->numeric(),
                TextInput::make('etiqueta_ciclo')
                    ->default(null),
                DatePicker::make('fecha'),
                TimePicker::make('hora'),
                TextInput::make('tipos_ubicaciones_id')
                    ->required()
                    ->numeric(),
                TextInput::make('estados_productos_calibrados_id')
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
