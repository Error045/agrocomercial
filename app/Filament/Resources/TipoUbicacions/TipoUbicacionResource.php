<?php

namespace App\Filament\Resources\TipoUbicacions;

use App\Filament\Resources\TipoUbicacions\Pages\CreateTipoUbicacion;
use App\Filament\Resources\TipoUbicacions\Pages\EditTipoUbicacion;
use App\Filament\Resources\TipoUbicacions\Pages\ListTipoUbicacions;
use App\Filament\Resources\TipoUbicacions\Pages\ViewTipoUbicacion;
use App\Filament\Resources\TipoUbicacions\Schemas\TipoUbicacionForm;
use App\Filament\Resources\TipoUbicacions\Schemas\TipoUbicacionInfolist;
use App\Filament\Resources\TipoUbicacions\Tables\TipoUbicacionsTable;
use App\Models\TipoUbicacion;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class TipoUbicacionResource extends Resource
{
    protected static ?string $model = TipoUbicacion::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Tipos de Ubicación';
    protected static ?string $modelLabel = 'tipos de ubicación';
    protected static ?string $pluralModelLabel = 'tipos de ubicación';

    public static function form(Schema $schema): Schema
    {
        return TipoUbicacionForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return TipoUbicacionInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return TipoUbicacionsTable::configure($table);
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
            'index' => ListTipoUbicacions::route('/'),
            'create' => CreateTipoUbicacion::route('/create'),
            'view' => ViewTipoUbicacion::route('/{record}'),
            'edit' => EditTipoUbicacion::route('/{record}/edit'),
        ];
    }
}
