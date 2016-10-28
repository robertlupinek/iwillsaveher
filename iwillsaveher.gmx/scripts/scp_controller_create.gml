game_state = 0;
my_selection_thingy = instance_create(mouse_x,mouse_y,obj_selection_thingy);
//Set the key stone counter to 0 :)
global.key_stone = 0;

//Set the combo counter
global.combo = 0;

//Which player was selected
player_selected = 0;
if ( instance_exists(obj_player_1) ) {
  player_id = obj_player_1.id;
}else if ( instance_exists(obj_player_2) ) {
  player_id = obj_player_2.id;
}else if ( instance_exists(obj_player_3) ) {
  player_id = obj_player_3.id;
}else{
  player_id = -1;
}

//Alarm 2 is for auto selecting a player
alarm[2] = 8;

//Create bottons
my_button_1 = instance_create(x+213,y+8,obj_button_p1);
//Text variables
xscale=1;
yscale=1;
angle =0;

//For leveling stuff
lvl_frame = 0;
spell_lvl_frame = 0;

//Prepare the grid movement
scp_controller_grid_create();
grid_move_speed = 30; //How quickly to trigger grid movement

if ( global.grid ){
  //Start moving enemies down the grid!
  alarm[5] = 1;
}


if ( global.mp ){
  //Prepare multipath
  scp_controller_mp_create();
}
//Triggers the above script again.  Needed for the random level stuff.
//Apparently the objects deleted in random level are not deleted until later.
alarm[0] = 1; 

//Create the go graphic
instance_create(room_width/2,-40,obj_effect_go);

//Do the level transition in!!!
my_t = instance_create(x,y,obj_transition_blocks);
my_t.tmp_grow = 11;
my_t.alpha = 1.35;
my_t.level_start = 1;
