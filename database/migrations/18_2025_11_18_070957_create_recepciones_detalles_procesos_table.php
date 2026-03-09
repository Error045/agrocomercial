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
        Schema::create('recepciones_detalles_procesos', function (Blueprint $table) {
            $table->id();

            $table->foreignId('recepciones_detalles_id')->constrained()->onDelete('cascade');
            $table->foreignId('procesos_id')->constrained()->onDelete('cascade');
            $table->date('fecha')->nullable();
            $table->time('hora')->nullable();
            $table->foreignId('estado_r_d_p_id')->constrained('estados_recepciones_detalles_procesos')->onDelete('cascade');
            
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
        Schema::dropIfExists('recepciones_detalles_procesos');
    }
};
