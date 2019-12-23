//Move altering
for( var i = 0; i < array_length_1d( move ); i++ )
{
	script_execute( move[i] );
}

//Collision detection
if( place_meeting( x, y, objWall ) )
{
	//runs hit code with objWall as an arg
	for( var j = 0; j < array_length_1d( hit ); j++ )
	{
		script_execute( hit[j], "objWall" );
	}
	
	instance_destroy();
}

if( place_meeting( x, y, objEnemy ) )
{
	//runs hit code with the id of the enemy as an arg
	var enemyId = place_meeting( x, y, objEnemy );
	
	for( var j = 0; j < array_length_1d( hit ); j++ )
	{
		script_execute( hit[j], enemyId );
	}
	with( instance_create_layer(x,y,"Effects",objDamage) )
	{
		damage = other.damage;
	}
	instance_destroy();
}