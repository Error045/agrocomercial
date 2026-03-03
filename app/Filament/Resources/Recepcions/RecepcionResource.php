<?php

namespace App\Filament\Resources\Recepcions;

use App\Filament\Resources\Recepcions\Pages\CreateRecepcion;
use App\Filament\Resources\Recepcions\Pages\EditRecepcion;
use App\Filament\Resources\Recepcions\Pages\ListRecepcions;
use App\Filament\Resources\Recepcions\Pages\ViewRecepcion;
use App\Filament\Resources\Recepcions\Schemas\RecepcionForm;
use App\Filament\Resources\Recepcions\Schemas\RecepcionInfolist;
use App\Filament\Resources\Recepcions\Tables\RecepcionsTable;
use App\Models\Recepcion;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class RecepcionResource extends Resource
{
    protected static ?string $model = Recepcion::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $navigationLabel = 'Recepciones';
    protected static ?string $modelLabel = 'recepcion';
    protected static ?string $pluralModelLabel = 'recepciones';

    public static function form(Schema $schema): Schema
    {
        return RecepcionForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return RecepcionInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return RecepcionsTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListRecepcions::route('/'),
            'create' => CreateRecepcion::route('/create'),
            'view' => ViewRecepcion::route('/{record}'),
            'edit' => EditRecepcion::route('/{record}/edit'),
        ];
    }
}
