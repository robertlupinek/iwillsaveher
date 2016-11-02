
//Setup the multipath grid
global.mp_grid = mp_grid_create(0, 0, room_width / grid_size_x, room_height /grid_size_y, grid_size_x, grid_size_y);
//Mark areas where tehre are solid objects as blocker on the grid
mp_grid_add_instances(global.mp_grid,obj_block,0);

