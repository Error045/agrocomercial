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
        Schema::create('procesos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('recepciones_id')->constrained('recepciones')->onDelete('cascade');	
            $table->date('fecha')->nullable();
            $table->time('hora')->nullable();
            $table->string('descripcion')->nullable();	
            $table->foreignId('estados_procesos_id')->constrained('estados_procesos')->onDelete('cascade'); 
            
            $table->foreignId('users_id')->constrained('users')->onDelete('cascade');
            $table->boolean	('estado')->nullable()->default(true);
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('procesos');
    }
};
