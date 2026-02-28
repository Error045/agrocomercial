<?php

namespace App\Filament\Resources\EstadoProcesos;

use App\Filament\Resources\EstadoProcesos\Pages\CreateEstadoProceso;
use App\Filament\Resources\EstadoProcesos\Pages\EditEstadoProceso;
use App\Filament\Resources\EstadoProcesos\Pages\ListEstadoProcesos;
use App\Filament\Resources\EstadoProcesos\Pages\ViewEstadoProceso;
use App\Filament\Resources\EstadoProcesos\Schemas\EstadoProcesoForm;
use App\Filament\Resources\EstadoProcesos\Schemas\EstadoProcesoInfolist;
use App\Filament\Resources\EstadoProcesos\Tables\EstadoProcesosTable;
use App\Models\EstadoProceso;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class EstadoProcesoResource extends Resource
{
    protected static ?string $model = EstadoProceso::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Estados de Procesos';
    protected static ?string $modelLabel = 'estado de proceso';
    protected static ?string $pluralModelLabel = 'estados de procesos';

    public static function form(Schema $schema): Schema
    {
        return EstadoProcesoForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return EstadoProcesoInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EstadoProcesosTable::configure($table);
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
            'index' => ListEstadoProcesos::route('/'),
            'create' => CreateEstadoProceso::route('/create'),
            'view' => ViewEstadoProceso::route('/{record}'),
            'edit' => EditEstadoProceso::route('/{record}/edit'),
        ];
    }
}
