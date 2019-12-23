y--;
text_alpha = text_alpha - 0.015 ;
if( text_alpha <= 0 )
{
	instance_destroy();
}