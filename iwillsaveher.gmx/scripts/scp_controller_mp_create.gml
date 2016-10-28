
//Setup the multipath grid
global.mp_grid = mp_grid_create(0, 0, room_width / 24, room_height /24, 24, 24);
//Mark areas where tehre are solid objects as blocker on the grid
mp_grid_add_instances(global.mp_grid,obj_block,0);

