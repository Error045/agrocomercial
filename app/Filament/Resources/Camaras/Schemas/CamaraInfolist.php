<?php

namespace App\Filament\Resources\Camaras\Schemas;

use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class CamaraInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('nombre')
                    ->placeholder('-'),
                TextEntry::make('tamano')
                    ->placeholder('-'),
                TextEntry::make('capacidad')
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
