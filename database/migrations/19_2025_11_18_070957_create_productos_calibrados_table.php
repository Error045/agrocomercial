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
        Schema::create('productos_calibrados', function (Blueprint $table) {
            $table->id();

            $table->foreignId('procesos_id')->constrained()->onDelete('cascade');
            $table->foreignId('recepciones_id')->constrained()->onDelete('cascade'); // aunque no es necesario, se puede relacionar con la recepción para tener toda la información de la recepción, productor, tipo de recepción, etc.	
            $table->foreignId('productos_id')->constrained()->onDelete('cascade');    
            $table->foreignId('variedades_id')->constrained()->onDelete('cascade');
            $table->foreignId('calibres_id')->constrained()->onDelete('cascade');
            
            $table->integer('ciclo')->nullable();
            $table->foreignId('operaciones_logisticas_id')->constrained('operaciones_logisticas')->onDelete('cascade'); 
            
            $table->string('etiqueta_ciclo')->nullable(); // Ej: rec-300-1 
            $table->date('fecha')->nullable();
            $table->time('hora')->nullable();
            $table->foreignId('tipos_ubicaciones_id')->constrained('tipos_ubicaciones')->onDelete('cascade');   	
            $table->foreignId('estados_productos_calibrados_id')->constrained('estados_productos_calibrados')->onDelete('cascade');   
            
            $table->foreignId('users_id')->constrained()->onDelete('cascade');
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
        Schema::dropIfExists('productos_calibrados');
    }
};
