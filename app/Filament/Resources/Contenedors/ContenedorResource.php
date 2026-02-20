<?php

namespace App\Filament\Resources\Contenedors;

use App\Filament\Resources\Contenedors\Pages\CreateContenedor;
use App\Filament\Resources\Contenedors\Pages\EditContenedor;
use App\Filament\Resources\Contenedors\Pages\ListContenedors;
use App\Filament\Resources\Contenedors\Pages\ViewContenedor;
use App\Filament\Resources\Contenedors\Schemas\ContenedorForm;
use App\Filament\Resources\Contenedors\Schemas\ContenedorInfolist;
use App\Filament\Resources\Contenedors\Tables\ContenedorsTable;
use App\Models\Contenedor;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class ContenedorResource extends Resource
{
    protected static ?string $model = Contenedor::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Contenedores';
    protected static ?string $modelLabel = 'contenedores';
    protected static ?string $pluralModelLabel = 'contenedores';

    public static function form(Schema $schema): Schema
    {
        return ContenedorForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return ContenedorInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ContenedorsTable::configure($table);
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
            'index' => ListContenedors::route('/'),
            'create' => CreateContenedor::route('/create'),
            'view' => ViewContenedor::route('/{record}'),
            'edit' => EditContenedor::route('/{record}/edit'),
        ];
    }
}
