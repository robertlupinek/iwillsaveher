//Screen Capture

//Create a sprite from the surface that view 0 is drawing to.
//We will use this for pause screens.
screen_sprite = -1;
image_speed = 0;
pause= 0;
//How long to wait to unfreeze
alarm[0] = argument0;
//Freeze the screen.  We need at least 1 step to draw the screen to the surface
//then we will copy to the sprites ELSE it will just be blank.
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



