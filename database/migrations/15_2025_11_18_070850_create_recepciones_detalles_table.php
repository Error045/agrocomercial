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
        Schema::create('recepciones_detalles', function (Blueprint $table) {
            $table->id();
            $table->foreignId('productos_id')->constrained('productos')->onDelete('cascade');
            $table->foreignId('variedades_id')->constrained('variedades')->onDelete('cascade');
            $table->foreignId('contenedores_id')->constrained('contenedores')->onDelete('cascade');
            $table->foreignId('recepciones_id')->constrained('recepciones')->onDelete('cascade');
            $table->foreignId('operaciones_logisticas_id')->constrained('operaciones_logisticas')->onDelete('cascade');
            $table->integer('ciclo')->nullable();
            $table->string('etiqueta_ciclo')->nullable();
            $table->time('hora')->nullable();
            $table->decimal('kilos_bruto',8,1)->nullable();
            $table->decimal('kilos_neto',8,1)->nullable();
            $table->foreignId('tipos_ubicaciones_id')->constrained('tipos_ubicaciones')->onDelete('cascade');
            $table->foreignId('estados_recepciones_detalles_id')->constrained('estados_recepciones_detalles')->onDelete('cascade');
            
            $table->foreignId('users_id')->constrained('users')->onDelete('cascade');
            $table->integer('x')->nullable();
            $table->integer('y')->nullable();
            $table->integer('z')->nullable();

            $table->boolean	('estado')->nullable()->default(true);


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('recepciones_detalles');
    }
};
