<?php

namespace App\Filament\Resources\ProcesoDetalles;

use App\Filament\Resources\ProcesoDetalles\Pages\CreateProcesoDetalle;
use App\Filament\Resources\ProcesoDetalles\Pages\EditProcesoDetalle;
use App\Filament\Resources\ProcesoDetalles\Pages\ListProcesoDetalles;
use App\Filament\Resources\ProcesoDetalles\Pages\ViewProcesoDetalle;
use App\Filament\Resources\ProcesoDetalles\Schemas\ProcesoDetalleForm;
use App\Filament\Resources\ProcesoDetalles\Schemas\ProcesoDetalleInfolist;
use App\Filament\Resources\ProcesoDetalles\Tables\ProcesoDetallesTable;
use App\Models\ProcesoDetalle;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class ProcesoDetalleResource extends Resource
{
    protected static ?string $model = ProcesoDetalle::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $navigationLabel = 'Detalles de Procesos';
    protected static ?string $modelLabel = 'detalle de procesos';
    protected static ?string $pluralModelLabel = 'detalles de procesos';

    public static function form(Schema $schema): Schema
    {
        return ProcesoDetalleForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return ProcesoDetalleInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ProcesoDetallesTable::configure($table);
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
            'index' => ListProcesoDetalles::route('/'),
            'create' => CreateProcesoDetalle::route('/create'),
            'view' => ViewProcesoDetalle::route('/{record}'),
            'edit' => EditProcesoDetalle::route('/{record}/edit'),
        ];
    }
}
