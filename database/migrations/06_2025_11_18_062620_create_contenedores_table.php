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
        Schema::create('contenedores', function (Blueprint $table) {
            $table->id();
            $table->string('nombre')->nullable();	
            $table->decimal('tara',8,1)->nullable();	
            $table->decimal('capacidad',8,1)->nullable();	
            $table->string('material')->nullable();	
            $table->string('dimensiones')->nullable();	
            $table->string('descripcion')->nullable();	
            $table->boolean	('estado')->nullable()->default(true);	
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contenedores');
    }
};
