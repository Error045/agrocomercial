<?php

namespace App\Filament\Resources\EstadoRecepcions;

use App\Filament\Resources\EstadoRecepcions\Pages\CreateEstadoRecepcion;
use App\Filament\Resources\EstadoRecepcions\Pages\EditEstadoRecepcion;
use App\Filament\Resources\EstadoRecepcions\Pages\ListEstadoRecepcions;
use App\Filament\Resources\EstadoRecepcions\Pages\ViewEstadoRecepcion;
use App\Filament\Resources\EstadoRecepcions\Schemas\EstadoRecepcionForm;
use App\Filament\Resources\EstadoRecepcions\Schemas\EstadoRecepcionInfolist;
use App\Filament\Resources\EstadoRecepcions\Tables\EstadoRecepcionsTable;
use App\Models\EstadoRecepcion;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class EstadoRecepcionResource extends Resource
{
    protected static ?string $model = EstadoRecepcion::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Estados de Recepción';
    protected static ?string $modelLabel = 'estado de recepción';
    protected static ?string $pluralModelLabel = 'estados de recepción';

    public static function form(Schema $schema): Schema
    {
        return EstadoRecepcionForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return EstadoRecepcionInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EstadoRecepcionsTable::configure($table);
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
            'index' => ListEstadoRecepcions::route('/'),
            'create' => CreateEstadoRecepcion::route('/create'),
            'view' => ViewEstadoRecepcion::route('/{record}'),
            'edit' => EditEstadoRecepcion::route('/{record}/edit'),
        ];
    }
}
