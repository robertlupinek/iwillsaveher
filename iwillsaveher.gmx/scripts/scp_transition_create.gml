//Screen Capture

//Create a sprite from the surface that view 0 is drawing to.
//We will use this for pause screens.
screen_sprite = -1;
image_speed = 0;
pause= 0;
//How long to wait to unfreeze
alarm[0] = argument0;
//Draw a lovely black box around the screen to ease the transition.
//This is done in the draw gui so as not to upset the application surface that we copy.
alarm[1] = 2; 
start_x = x;
start_y = y;
//Ending a level
tmp_grow = 0;
alpha = 0;
level_start = 0;

//Starting a new level
//tmp_grow = 11;
//alpha = 1.2;
//level_start = 1;



