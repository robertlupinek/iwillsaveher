//Move image towards actual coordinates

//argument0 = target x 
//argument1 = target y
//argument2 = speed to move


if ( x > argument0 )
{
    x -= argument2;
}

if ( x < argument0 )
{
    x += argument2;
}

if ( y > argument1 )
{
    y -= argument2;
}

if ( y < argument1 )
{
    y += argument2;
}


//Make sure the unit's depth is set according to it's y coordinates
depth = -y;
