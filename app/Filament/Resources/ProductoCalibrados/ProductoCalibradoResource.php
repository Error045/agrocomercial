<?php

namespace App\Filament\Resources\ProductoCalibrados;

use App\Filament\Resources\ProductoCalibrados\Pages\CreateProductoCalibrado;
use App\Filament\Resources\ProductoCalibrados\Pages\EditProductoCalibrado;
use App\Filament\Resources\ProductoCalibrados\Pages\ListProductoCalibrados;
use App\Filament\Resources\ProductoCalibrados\Pages\ViewProductoCalibrado;
use App\Filament\Resources\ProductoCalibrados\Schemas\ProductoCalibradoForm;
use App\Filament\Resources\ProductoCalibrados\Schemas\ProductoCalibradoInfolist;
use App\Filament\Resources\ProductoCalibrados\Tables\ProductoCalibradosTable;
use App\Models\ProductoCalibrado;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class ProductoCalibradoResource extends Resource
{
    protected static ?string $model = ProductoCalibrado::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return ProductoCalibradoForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return ProductoCalibradoInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ProductoCalibradosTable::configure($table);
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
            'index' => ListProductoCalibrados::route('/'),
            'create' => CreateProductoCalibrado::route('/create'),
            'view' => ViewProductoCalibrado::route('/{record}'),
            'edit' => EditProductoCalibrado::route('/{record}/edit'),
        ];
    }
}
