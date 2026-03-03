<?php

namespace App\Filament\Resources\Recepcions\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class RecepcionForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('tipos_recepciones_id')
                    ->required()
                    ->numeric(),
                TextInput::make('personas_id')
                    ->required()
                    ->numeric(),
                DatePicker::make('fecha'),
                TimePicker::make('hora'),
                TextInput::make('estados_recepciones_id')
                    ->required()
                    ->numeric(),
                TextInput::make('users_id')
                    ->required()
                    ->numeric(),
                Toggle::make('estado'),
            ]);
    }
}
