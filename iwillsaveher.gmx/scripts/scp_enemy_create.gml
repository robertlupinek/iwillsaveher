image_speed = 0.25;
//Default image speed in case we need to change it for stuff...
start_image_speed = image_speed;

//Stats

//Stats
hp_max = 10;
hp = hp_max;
reload = 120;
attack = 1;
armor = 1;
//Attack range
range = 120;
//Point value 
gold_value = 100;
exp_value = 40;

if ( global.mp ){
  //Only used for multipathmovement :)
  my_path = path_add();
  my_grid = global.mp_grid;
}
//These will be used later once a target is chosen for the enemy.
//Set in scp_enemy_mp_move.
target_x = x;
target_y = y;

//Move speed 
move_speed= 0.75;

//Sprite selection
sprite_climb = spr_devil_dog_c;
sprite_walk = spr_devil_dog_w;
sprite_attack = spr_devil_dog_j;


//Attacking stuff
attacking = 0;
//image_xscale will scale the bbox breaking collisions
xscale = 1;
yscale = 1;
//Mostly used for turrets ( only used for turrets so far )
target_xscale = xscale;

//Status effects
knocked_back = 0;
//How long for flying enemies to recover from knock back
knocked_back_delay = 20;
//Give exp or not when killed...
give_exp = true;

//////////////////////
//Enemy behaviors
/////////////////////
//Is this a turret enemy?
//These enemies remain stationary
turret = 0;
//Ranged types will stop and fire a long range attack at the player
ranged = 0;
//Hunters find the closest player and pursue!
hunter = 1;



