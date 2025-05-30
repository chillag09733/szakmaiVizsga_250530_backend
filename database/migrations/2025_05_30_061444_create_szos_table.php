<?php

use App\Models\Szo;
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
        Schema::create('szos', function (Blueprint $table) {
            $table->id();
            $table->string('magyar');
            $table->string('angol');
            $table->foreignId('temaId')->references('id')->on('temas');
            $table->timestamps();
        });

        Szo::create([
            'angol' => 'apple',
            'magyar' => 'alma',
            'temaId' => '1',
        ]);

        Szo::create([
            'angol' => 'pineapple',
            'magyar' => 'ananász',
            'temaId' => '1',
        ]);

        Szo::create([
            'angol' => 'cucumber',
            'magyar' => 'uborka',
            'temaId' => '2',
        ]);

        Szo::create([
            'angol' => 'cabbage',
            'magyar' => 'káposzta',
            'temaId' => '2',
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('szos');
    }
};
