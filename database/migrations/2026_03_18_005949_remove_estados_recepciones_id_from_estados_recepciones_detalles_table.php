<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('estados_recepciones_detalles', function (Blueprint $table) {
            $table->dropForeign(['estados_recepciones_id']);
            
            // Luego eliminar la columna
            $table->dropColumn('estados_recepciones_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('estados_recepciones_detalles', function (Blueprint $table) {
            $table->foreignId('estados_recepciones_id')
                ->after('descripcion')
                ->constrained('estados_recepciones')
                ->onDelete('cascade');
        });
    }
};
