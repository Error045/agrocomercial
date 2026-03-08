<?php

namespace App\Filament\Resources\EstadoProcesoDetalles;

use App\Filament\Resources\EstadoProcesoDetalles\Pages\CreateEstadoProcesoDetalle;
use App\Filament\Resources\EstadoProcesoDetalles\Pages\EditEstadoProcesoDetalle;
use App\Filament\Resources\EstadoProcesoDetalles\Pages\ListEstadoProcesoDetalles;
use App\Filament\Resources\EstadoProcesoDetalles\Pages\ViewEstadoProcesoDetalle;
use App\Filament\Resources\EstadoProcesoDetalles\Schemas\EstadoProcesoDetalleForm;
use App\Filament\Resources\EstadoProcesoDetalles\Schemas\EstadoProcesoDetalleInfolist;
use App\Filament\Resources\EstadoProcesoDetalles\Tables\EstadoProcesoDetallesTable;
use App\Models\EstadoProcesoDetalle;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class EstadoProcesoDetalleResource extends Resource
{
    protected static ?string $model = EstadoProcesoDetalle::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Estados detalle proceso';
    protected static ?string $modelLabel = 'estado detalle proceso';
    protected static ?string $pluralModelLabel = 'estados detalle proceso';

    public static function form(Schema $schema): Schema
    {
        return EstadoProcesoDetalleForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return EstadoProcesoDetalleInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EstadoProcesoDetallesTable::configure($table);
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
            'index' => ListEstadoProcesoDetalles::route('/'),
            'create' => CreateEstadoProcesoDetalle::route('/create'),
            'view' => ViewEstadoProcesoDetalle::route('/{record}'),
            'edit' => EditEstadoProcesoDetalle::route('/{record}/edit'),
        ];
    }
}
