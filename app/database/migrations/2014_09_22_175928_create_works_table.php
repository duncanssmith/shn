<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorksTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
            Schema::create('works', function($table)
            {
                $table->increments('id');
                $table->string('reference');
                $table->string('title');
                $table->string('media');
                $table->string('dimensions');
                $table->date('work_date');
                $table->timestamps();
            });
		//
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
            Schema::drop('works');
		//
	}

}
