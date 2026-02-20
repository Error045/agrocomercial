<?php

namespace App\Filament\Resources\Camaras;

use App\Filament\Resources\Camaras\Pages\CreateCamara;
use App\Filament\Resources\Camaras\Pages\EditCamara;
use App\Filament\Resources\Camaras\Pages\ListCamaras;
use App\Filament\Resources\Camaras\Pages\ViewCamara;
use App\Filament\Resources\Camaras\Schemas\CamaraForm;
use App\Filament\Resources\Camaras\Schemas\CamaraInfolist;
use App\Filament\Resources\Camaras\Tables\CamarasTable;
use App\Models\Camara;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class CamaraResource extends Resource
{
    protected static ?string $model = Camara::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre';

    protected static ?string $navigationLabel = 'Camaras';
    protected static ?string $modelLabel = 'camara';
    protected static ?string $pluralModelLabel = 'camaras';

    public static function form(Schema $schema): Schema
    {
        return CamaraForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return CamaraInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return CamarasTable::configure($table);
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
            'index' => ListCamaras::route('/'),
            'create' => CreateCamara::route('/create'),
            'view' => ViewCamara::route('/{record}'),
            'edit' => EditCamara::route('/{record}/edit'),
        ];
    }
}
