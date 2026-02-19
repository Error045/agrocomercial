<?php

namespace App\Filament\Resources\TipoRecepcions;

use App\Filament\Resources\TipoRecepcions\Pages\CreateTipoRecepcion;
use App\Filament\Resources\TipoRecepcions\Pages\EditTipoRecepcion;
use App\Filament\Resources\TipoRecepcions\Pages\ListTipoRecepcions;
use App\Filament\Resources\TipoRecepcions\Pages\ViewTipoRecepcion;
use App\Filament\Resources\TipoRecepcions\Schemas\TipoRecepcionForm;
use App\Filament\Resources\TipoRecepcions\Schemas\TipoRecepcionInfolist;
use App\Filament\Resources\TipoRecepcions\Tables\TipoRecepcionsTable;
use App\Models\TipoRecepcion;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class TipoRecepcionResource extends Resource
{
    protected static ?string $model = TipoRecepcion::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'tipo';

    protected static ?string $navigationLabel = 'Tipos de Recepción';
    protected static ?string $modelLabel = 'tipo de recepción';
    protected static ?string $pluralModelLabel = 'tipos de recepción';

    public static function form(Schema $schema): Schema
    {
        return TipoRecepcionForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return TipoRecepcionInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return TipoRecepcionsTable::configure($table);
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
            'index' => ListTipoRecepcions::route('/'),
            'create' => CreateTipoRecepcion::route('/create'),
            'view' => ViewTipoRecepcion::route('/{record}'),
            'edit' => EditTipoRecepcion::route('/{record}/edit'),
        ];
    }
}
