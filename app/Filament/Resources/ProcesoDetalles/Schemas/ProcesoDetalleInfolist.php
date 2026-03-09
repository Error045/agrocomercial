<?php

namespace App\Filament\Resources\ProcesoDetalles\Schemas;

use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class ProcesoDetalleInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('procesos_id')
                    ->numeric(),
                TextEntry::make('kilos')
                    ->numeric()
                    ->placeholder('-'),
                TextEntry::make('contenedores_id')
                    ->numeric(),
                TextEntry::make('fecha')
                    ->date()
                    ->placeholder('-'),
                TextEntry::make('hora')
                    ->time()
                    ->placeholder('-'),
                TextEntry::make('productos_id')
                    ->numeric(),
                TextEntry::make('variedades_id')
                    ->numeric(),
                TextEntry::make('estados_procesos_detalles_id')
                    ->numeric(),
                TextEntry::make('users_id')
                    ->numeric(),
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
