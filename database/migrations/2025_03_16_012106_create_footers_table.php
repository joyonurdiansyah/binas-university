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
        Schema::create('footers', function (Blueprint $table) {
            $table->id();
            $table->string('image')->notNullable();
            $table->string('link_instagram')->notnullable();
            $table->string('link_youtube')->notnullable();
            $table->string('link_linkedin')->notnullable();
            $table->string('link_facebook')->notnullable();
            $table->string('alamat')->notnullable();
            $table->string('email')->notnullable();
            $table->string('wa')->notnullable();
            $table->string('link_gmaps')->notnullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('footers');
    }
};
