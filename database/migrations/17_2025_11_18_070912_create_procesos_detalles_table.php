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
        Schema::create('procesos_detalles', function (Blueprint $table) {
            $table->id();
            $table->foreignId('procesos_id')->constrained()->onDelete('cascade');	
            $table->decimal('kilos',8,1)->nullable();	
            $table->foreignId('contenedores_id')->constrained()->onDelete('cascade');	
            $table->date('fecha')->nullable();
            $table->time('hora')->nullable();	
            $table->foreignId('productos_id')->constrained()->onDelete('cascade');	
            $table->foreignId('variedades_id')->constrained()->onDelete('cascade');	
            $table->foreignId('estados_procesos_detalles_id')->constrained('estados_procesos_detalles')->onDelete('cascade');   
           
            $table->foreignId('users_id')->constrained()->onDelete('cascade');
            $table->boolean	('estado')->nullable()->default(true);	


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('procesos_detalles');
    }
};
