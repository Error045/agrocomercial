<?php

namespace App\Filament\Resources\Procesos\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class ProcesoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('recepciones_id')
                    ->required()
                    ->numeric(),
                DatePicker::make('fecha'),
                TimePicker::make('hora'),
                TextInput::make('descripcion')
                    ->default(null),
                TextInput::make('estados_procesos_id')
                    ->required()
                    ->numeric(),
                TextInput::make('users_id')
                    ->required()
                    ->numeric(),
                Toggle::make('estado'),
            ]);
    }
}
