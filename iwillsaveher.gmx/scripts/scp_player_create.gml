move_speed = 2;
image_speed = 0.25;

//Stats
///////////////////
//How much damage can the player sustain
hp_max = global.hp_max[p_index] + global.item_hp_max[p_index];
//How quickly spells reload
reload = global.reload[p_index] + global.item_reload[p_index];
//Base attack power plus any bonus from magical items
attack = global.attack[p_index] + global.item_attack[p_index];
//Base armor plus armor from item
armor = global.armor[p_index] + global.item_armor[p_index];
//Rate of regernation of hp is base plus item regen 
regen = global.regen[p_index] + global.item_regen[p_index];
//Spell stats
tmp_spell = global.spell_selected[p_index];
//Spell stats
///////////////////
//Spell attack
spell_attack = global.spell_attack[tmp_spell] + ( global.spell_attack_per_level[tmp_spell] * global.spell_level[tmp_spell] );
//Spell reload
spell_reload = global.spell_reload[tmp_spell] + ( global.spell_reload_per_level[tmp_spell] * global.spell_level[tmp_spell] );

hp = hp_max;

//Leveling
exp_next = scp_player_next_level(); 

//Trigger the attack
alarm[1] = reload;
//Regen triger
regen_timer = 200;
alarm[2] += regen_timer;

//Attacking
attack_charge = 0;
attack_charge_max = 1;

//Target for auto aiming
enemy_target = -1;

//Movement target for mouse and grid based movement
target_x = x;
target_y = y;

//How fast you move
move_speed = 3;

gravity = 0;

//Status effects
knocked_back = 0;

if ( global.mp ){
  ////////////////////////////////////////////////////////
  //Only used for multipathmovement :)
  ////////////////////////////////////////////////////////
  my_path = path_add();
  //Found a good path
  good_path_found = 0;
  //Check if moving by checking the path index :)
  moving = path_index;
  //Set path and the default alpha value for drawing the path
  path_ln = path_get_length(my_path);
  path_ln = 1;  //Doing this negate possible rediculously long for loop in draw event
  path_alpha = 1;
  
}

//For mouse movement
target_x = x;
target_y = y;


//If player is selected to move
  move_select = 0;

//Sprites stuff
player_offset_x = 0;
player_offset_y = 0;

sprite_walk = spr_player_1_w;
sprite_climb = spr_player_1_c;
sprite_climb_still = spr_player_1_cs;
sprite_stand_still = spr_player_1_s;


//Create the wand
my_wand = instance_create(x,y,obj_player_1_wand);

//image_xscale will scale the bbox breaking collisions
xscale = 1;
yscale = 1;

//Create the camera
my_camera = instance_create(x,y,obj_camera);
