//Screen Capture
//We need to create a new surface that view 0 will draw to.
srf_screen = surface_create(view_wview[0], view_hview[0]);
//Assign a surface for view 0 to draw to vs the default.
//This means we will need to draw srf_screen in another view for it to be displayed.
view_surface_id[0] = srf_screen; //Assign the surface to the view
//Create a sprite from the surface that view 0 is drawing to.
//We will use this for pause screens.
screen_sprite = sprite_create_from_surface(srf_screen,0,0,view_wview[0],view_hview[0],false,false,0,0);
image_speed = 0;

start_x = x;
start_y = y;


paused = 0;
unpause = 0;
