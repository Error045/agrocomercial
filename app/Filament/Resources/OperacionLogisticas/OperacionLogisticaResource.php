<?php

namespace App\Filament\Resources\OperacionLogisticas;

use App\Filament\Resources\OperacionLogisticas\Pages\CreateOperacionLogistica;
use App\Filament\Resources\OperacionLogisticas\Pages\EditOperacionLogistica;
use App\Filament\Resources\OperacionLogisticas\Pages\ListOperacionLogisticas;
use App\Filament\Resources\OperacionLogisticas\Pages\ViewOperacionLogistica;
use App\Filament\Resources\OperacionLogisticas\Schemas\OperacionLogisticaForm;
use App\Filament\Resources\OperacionLogisticas\Schemas\OperacionLogisticaInfolist;
use App\Filament\Resources\OperacionLogisticas\Tables\OperacionLogisticasTable;
use App\Models\OperacionLogistica;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class OperacionLogisticaResource extends Resource
{
    protected static ?string $model = OperacionLogistica::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Operaciones Logísticas';
    protected static ?string $modelLabel = 'operacion logística';
    protected static ?string $pluralModelLabel = 'operaciones logísticas';

    public static function form(Schema $schema): Schema
    {
        return OperacionLogisticaForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return OperacionLogisticaInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return OperacionLogisticasTable::configure($table);
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
            'index' => ListOperacionLogisticas::route('/'),
            'create' => CreateOperacionLogistica::route('/create'),
            'view' => ViewOperacionLogistica::route('/{record}'),
            'edit' => EditOperacionLogistica::route('/{record}/edit'),
        ];
    }
}
