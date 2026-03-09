<?php

namespace App\Filament\Resources\ProductoCalibrados\Schemas;

use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class ProductoCalibradoInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('procesos_id')
                    ->numeric(),
                TextEntry::make('recepciones_id')
                    ->numeric(),
                TextEntry::make('productos_id')
                    ->numeric(),
                TextEntry::make('variedades_id')
                    ->numeric(),
                TextEntry::make('calibres_id')
                    ->numeric(),
                TextEntry::make('ciclo')
                    ->numeric()
                    ->placeholder('-'),
                TextEntry::make('operaciones_logisticas_id')
                    ->numeric(),
                TextEntry::make('etiqueta_ciclo')
                    ->placeholder('-'),
                TextEntry::make('fecha')
                    ->date()
                    ->placeholder('-'),
                TextEntry::make('hora')
                    ->time()
                    ->placeholder('-'),
                TextEntry::make('tipos_ubicaciones_id')
                    ->numeric(),
                TextEntry::make('estados_productos_calibrados_id')
                    ->numeric(),
                TextEntry::make('users_id')
                    ->numeric(),
                TextEntry::make('x')
                    ->numeric()
                    ->placeholder('-'),
                TextEntry::make('y')
                    ->numeric()
                    ->placeholder('-'),
                TextEntry::make('z')
                    ->numeric()
                    ->placeholder('-'),
                IconEntry::make('estado')
                    ->boolean()
                    ->placeholder('-'),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
