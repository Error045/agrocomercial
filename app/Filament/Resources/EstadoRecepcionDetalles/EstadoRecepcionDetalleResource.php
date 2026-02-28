<?php

namespace App\Filament\Resources\EstadoRecepcionDetalles;

use App\Filament\Resources\EstadoRecepcionDetalles\Pages\CreateEstadoRecepcionDetalle;
use App\Filament\Resources\EstadoRecepcionDetalles\Pages\EditEstadoRecepcionDetalle;
use App\Filament\Resources\EstadoRecepcionDetalles\Pages\ListEstadoRecepcionDetalles;
use App\Filament\Resources\EstadoRecepcionDetalles\Pages\ViewEstadoRecepcionDetalle;
use App\Filament\Resources\EstadoRecepcionDetalles\Schemas\EstadoRecepcionDetalleForm;
use App\Filament\Resources\EstadoRecepcionDetalles\Schemas\EstadoRecepcionDetalleInfolist;
use App\Filament\Resources\EstadoRecepcionDetalles\Tables\EstadoRecepcionDetallesTable;
use App\Models\EstadoRecepcionDetalle;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class EstadoRecepcionDetalleResource extends Resource
{
    protected static ?string $model = EstadoRecepcionDetalle::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Detalles estados de Recepción';
    protected static ?string $modelLabel = 'detalle estado de recepción';
    protected static ?string $pluralModelLabel = 'detalles estados de recepción';

    public static function form(Schema $schema): Schema
    {
        return EstadoRecepcionDetalleForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return EstadoRecepcionDetalleInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EstadoRecepcionDetallesTable::configure($table);
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
            'index' => ListEstadoRecepcionDetalles::route('/'),
            'create' => CreateEstadoRecepcionDetalle::route('/create'),
            'view' => ViewEstadoRecepcionDetalle::route('/{record}'),
            'edit' => EditEstadoRecepcionDetalle::route('/{record}/edit'),
        ];
    }
}
