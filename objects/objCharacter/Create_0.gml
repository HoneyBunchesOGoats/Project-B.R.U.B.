spd = 4;

item = [];
var itemId = instance_create_layer(x,y, "Instances", objItem);
item[0] = itemId;

btSize = 1;
btDamage = 1;
btSpeed = 10;
btSpray = 0;
btCount = 1;
btSpread = 0;

//runs through the item array and applies gun effects
for( var i = 0; i < array_length_1d( item ); i++ )
{
	with( item[i] )
	{
		script_execute( applyChar, other.id );
	}
}