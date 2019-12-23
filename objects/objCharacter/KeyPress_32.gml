//BULLET MAKIN'

//makes the correct number of bullets
for( var j = 0; j < btCount; j++ )
{
	//makes a bullet
	var btId = instance_create_layer( x, y, "Bullet", objBullet );
	
	//finds its direction
	var dir = point_direction( x, y, mouse_x, mouse_y );
	
	if( btSpread > 0 && btCount > 1 )
	{
		dir -= btSpread/2;
		dir += (btSpread/(btCount - 1)) * j;
	}
	
	//adds spray
	dir += random_range( -1 * btSpray, btSpray );
	
	//sets initial bullet variables
	with( btId )
	{
		size = other.btSize;
		damage = other.btDamage;
		speed = other.btSpeed;
		direction = dir;
	}
	
	//runs through the item array and fills move and hit arrays
	for( var k = 0; k < array_length_1d( item ); k++ )
	{
		with( item[k] )
		{
			script_execute( applyBullet, btId );
		}
	}
}
