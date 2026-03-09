<?php

namespace App\Filament\Resources\RecepcionDetalleProcesos\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class RecepcionDetalleProcesoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('recepciones_detalles_id')
                    ->required()
                    ->numeric(),
                TextInput::make('procesos_id')
                    ->required()
                    ->numeric(),
                DatePicker::make('fecha'),
                TimePicker::make('hora'),
                Select::make('estado_r_d_p_id')
                    ->relationship('estadoRDP', 'id')
                    ->required(),
                TextInput::make('users_id')
                    ->required()
                    ->numeric(),
                Toggle::make('estado'),
            ]);
    }
}
