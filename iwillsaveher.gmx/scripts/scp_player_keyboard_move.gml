//Keyboard based movement

//Reset directions
m_up = 0;
m_down = 0;
m_left = 0;
m_right = 0;

//Up
if ( ( keyboard_check(vk_up) ||  keyboard_check(ord('W') )  )   )
{
   m_up = 1;
}
//Down
if ( ( keyboard_check(vk_down) ||  keyboard_check(ord('S') )  )   )
{
   m_down = 1; 
}
//Left
if ( ( keyboard_check(vk_left) ||  keyboard_check(ord('A') )  )  )
{
   m_left = 1;
}
//Right
if ( ( keyboard_check(vk_right) ||  keyboard_check(ord('D') )  )  )
{
   m_right = 1;
}

//Set the speeds based on what directions are selected...
//Up
if ( m_up = 1 && m_down = 0 ) 
{
  vspeed = -move_speed;
}
//Down
if ( m_up = 0 && m_down = 1 ) 
{
  vspeed = move_speed;
}
//Neither up nor down
if ( m_up = 0 && m_down = 0 )
{
  vspeed = 0;
}
//Left
if ( m_left = 1 && m_right = 0 ) 
{
  hspeed = -move_speed;
}
//Right 
if ( m_left = 0 && m_right = 1 ) 
{
  hspeed = move_speed;
}
//Neither Left nor Right 
if ( m_left = 0 && m_right = 0 ) 
{
  hspeed = 0;
}
