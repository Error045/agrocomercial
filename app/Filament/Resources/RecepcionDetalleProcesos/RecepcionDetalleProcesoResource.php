<?php

namespace App\Filament\Resources\RecepcionDetalleProcesos;

use App\Filament\Resources\RecepcionDetalleProcesos\Pages\CreateRecepcionDetalleProceso;
use App\Filament\Resources\RecepcionDetalleProcesos\Pages\EditRecepcionDetalleProceso;
use App\Filament\Resources\RecepcionDetalleProcesos\Pages\ListRecepcionDetalleProcesos;
use App\Filament\Resources\RecepcionDetalleProcesos\Pages\ViewRecepcionDetalleProceso;
use App\Filament\Resources\RecepcionDetalleProcesos\Schemas\RecepcionDetalleProcesoForm;
use App\Filament\Resources\RecepcionDetalleProcesos\Schemas\RecepcionDetalleProcesoInfolist;
use App\Filament\Resources\RecepcionDetalleProcesos\Tables\RecepcionDetalleProcesosTable;
use App\Models\RecepcionDetalleProceso;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class RecepcionDetalleProcesoResource extends Resource
{
    protected static ?string $model = RecepcionDetalleProceso::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return RecepcionDetalleProcesoForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return RecepcionDetalleProcesoInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return RecepcionDetalleProcesosTable::configure($table);
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
            'index' => ListRecepcionDetalleProcesos::route('/'),
            'create' => CreateRecepcionDetalleProceso::route('/create'),
            'view' => ViewRecepcionDetalleProceso::route('/{record}'),
            'edit' => EditRecepcionDetalleProceso::route('/{record}/edit'),
        ];
    }
}
