<?php

namespace App\Filament\Resources\RecepcionDetalles;

use App\Filament\Resources\RecepcionDetalles\Pages\CreateRecepcionDetalle;
use App\Filament\Resources\RecepcionDetalles\Pages\EditRecepcionDetalle;
use App\Filament\Resources\RecepcionDetalles\Pages\ListRecepcionDetalles;
use App\Filament\Resources\RecepcionDetalles\Pages\ViewRecepcionDetalle;
use App\Filament\Resources\RecepcionDetalles\Schemas\RecepcionDetalleForm;
use App\Filament\Resources\RecepcionDetalles\Schemas\RecepcionDetalleInfolist;
use App\Filament\Resources\RecepcionDetalles\Tables\RecepcionDetallesTable;
use App\Models\RecepcionDetalle;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class RecepcionDetalleResource extends Resource
{
    protected static ?string $model = RecepcionDetalle::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $navigationLabel = 'Recepciones Detalles';
    protected static ?string $modelLabel = 'recepcion detalles';
    protected static ?string $pluralModelLabel = 'recepciones detalles';

    public static function form(Schema $schema): Schema
    {
        return RecepcionDetalleForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return RecepcionDetalleInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return RecepcionDetallesTable::configure($table);
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
            'index' => ListRecepcionDetalles::route('/'),
            'create' => CreateRecepcionDetalle::route('/create'),
            'view' => ViewRecepcionDetalle::route('/{record}'),
            'edit' => EditRecepcionDetalle::route('/{record}/edit'),
        ];
    }
}
