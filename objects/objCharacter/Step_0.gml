//KEY HANDLING

var deltaX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var deltaY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if( deltaY != 0 )
{
	deltaX *= 0.707;
}

if( deltaX != 0 )
{
	deltaY *= 0.707;
}

//MOVEMENT

if( place_meeting( x + (deltaX * spd), y, objWall ) )
{
	while( !place_meeting( x + sign(deltaX), y, objWall ) )
	{
		x += sign(deltaX);
	}
}
else
{
	x += deltaX * spd;
}

if( place_meeting( x, y + (deltaY * spd), objWall ) )
{
	while( !place_meeting( x, y + sign(deltaY), objWall ) )
	{
		y += sign(deltaY);
	}
}
else
{
	y += deltaY * spd;
}
