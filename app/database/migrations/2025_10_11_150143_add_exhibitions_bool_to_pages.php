<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddExhibitionsBooleanToPagesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		//
		Schema::table('groups', function(Blueprint $table)
        {
			$table->boolean('exhibitions')->default(false);
        });
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
		Schema::table('groups', function(Blueprint $table)
		{
		    $table->dropColumn('exhibitions');
		});
	}

}
