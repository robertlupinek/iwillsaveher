//Create event of the main controller object
//Mouse stuff
mouse_grid_x = 0;
mouse_grid_y = 0;

//Set up the game grid
grid_size_x = 24; //Width of grid cells
grid_size_y = 24; //Height of grid cells

//Borders to not allow the grid mouse :)
grid_top = 1;
grid_bottom = 2;
grid_left = 1;
grid_right = 2;



//Variables to move player set the grid arrow.
move_x = 0;
move_y = 0;
move_rot = 0;

//Move speed of the units per step
move_speed = 4;

//Create the arrow
move_arrow = instance_create(x,y,obj_grid_arrow);

//Selected object to mpve on the grid
selected_object = -1;



