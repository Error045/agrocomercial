<?php

namespace App\Filament\Resources\EstadoProductoCalibrados;

use App\Filament\Resources\EstadoProductoCalibrados\Pages\CreateEstadoProductoCalibrado;
use App\Filament\Resources\EstadoProductoCalibrados\Pages\EditEstadoProductoCalibrado;
use App\Filament\Resources\EstadoProductoCalibrados\Pages\ListEstadoProductoCalibrados;
use App\Filament\Resources\EstadoProductoCalibrados\Pages\ViewEstadoProductoCalibrado;
use App\Filament\Resources\EstadoProductoCalibrados\Schemas\EstadoProductoCalibradoForm;
use App\Filament\Resources\EstadoProductoCalibrados\Schemas\EstadoProductoCalibradoInfolist;
use App\Filament\Resources\EstadoProductoCalibrados\Tables\EstadoProductoCalibradosTable;
use App\Models\EstadoProductoCalibrado;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class EstadoProductoCalibradoResource extends Resource
{
    protected static ?string $model = EstadoProductoCalibrado::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Estados de Producto Calibrado';
    protected static ?string $modelLabel = 'estado de producto calibrado';
    protected static ?string $pluralModelLabel = 'estados de producto calibrado';

    public static function form(Schema $schema): Schema
    {
        return EstadoProductoCalibradoForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return EstadoProductoCalibradoInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EstadoProductoCalibradosTable::configure($table);
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
            'index' => ListEstadoProductoCalibrados::route('/'),
            'create' => CreateEstadoProductoCalibrado::route('/create'),
            'view' => ViewEstadoProductoCalibrado::route('/{record}'),
            'edit' => EditEstadoProductoCalibrado::route('/{record}/edit'),
        ];
    }
}
