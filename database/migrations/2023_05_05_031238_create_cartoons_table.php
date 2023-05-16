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
        Schema::create('cartoons', function (Blueprint $table) {
            $table->id();
            $table->string('title_cartoon', 150);
            $table->text('description');
            $table->unsignedBigInteger('author');
            $table->timestamps();
            $table->softDeletes();

            $table->dropForeign('author')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cartoons');
    }
};
