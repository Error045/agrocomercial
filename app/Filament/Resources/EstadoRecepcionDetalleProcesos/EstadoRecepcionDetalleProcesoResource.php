<?php

namespace App\Filament\Resources\EstadoRecepcionDetalleProcesos;

use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages\CreateEstadoRecepcionDetalleProceso;
use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages\EditEstadoRecepcionDetalleProceso;
use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages\ListEstadoRecepcionDetalleProcesos;
use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Pages\ViewEstadoRecepcionDetalleProceso;
use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Schemas\EstadoRecepcionDetalleProcesoForm;
use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Schemas\EstadoRecepcionDetalleProcesoInfolist;
use App\Filament\Resources\EstadoRecepcionDetalleProcesos\Tables\EstadoRecepcionDetalleProcesosTable;
use App\Models\EstadoRecepcionDetalleProceso;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class EstadoRecepcionDetalleProcesoResource extends Resource
{
    protected static ?string $model = EstadoRecepcionDetalleProceso::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Estados Recepcion Detalle Proceso';
    protected static ?string $modelLabel = 'estado recepcion detalle proceso';
    protected static ?string $pluralModelLabel = 'estados recepcion detalle proceso';

    public static function form(Schema $schema): Schema
    {
        return EstadoRecepcionDetalleProcesoForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return EstadoRecepcionDetalleProcesoInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EstadoRecepcionDetalleProcesosTable::configure($table);
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
            'index' => ListEstadoRecepcionDetalleProcesos::route('/'),
            'create' => CreateEstadoRecepcionDetalleProceso::route('/create'),
            'view' => ViewEstadoRecepcionDetalleProceso::route('/{record}'),
            'edit' => EditEstadoRecepcionDetalleProceso::route('/{record}/edit'),
        ];
    }
}
