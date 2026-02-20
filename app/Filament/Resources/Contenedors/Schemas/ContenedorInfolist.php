<?php

namespace App\Filament\Resources\Contenedors\Schemas;

use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class ContenedorInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('nombre')
                    ->placeholder('-'),
                TextEntry::make('tara')
                    ->numeric()
                    ->placeholder('-'),
                TextEntry::make('capacidad')
                    ->numeric()
                    ->placeholder('-'),
                TextEntry::make('material')
                    ->placeholder('-'),
                TextEntry::make('dimensiones')
                    ->placeholder('-'),
                TextEntry::make('descripcion')
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
