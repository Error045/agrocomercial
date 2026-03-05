<?php

namespace App\Filament\Resources\RecepcionDetalles\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class RecepcionDetallesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('productos_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('variedades_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('contenedores_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('recepciones_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('operaciones_logisticas_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('ciclo')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('etiqueta_ciclo')
                    ->searchable(),
                TextColumn::make('hora')
                    ->time()
                    ->sortable(),
                TextColumn::make('kilos_bruto')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('kilos_neto')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('tipos_ubicaciones_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('estados_recepciones_detalles_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('users_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('x')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('y')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('z')
                    ->numeric()
                    ->sortable(),
                IconColumn::make('estado')
                    ->boolean(),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
