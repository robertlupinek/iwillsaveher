
//For now we just point towards the player parent object.
tmp_target = obj_player_parent;

//Freeze the enemy

if ( !alarm[4] ){

  //Hunt the player if you are a hunter type enemy.
  if ( hunter ){
    //Only used for multipath
    if ( global.mp ){
      if random(100) > 50 then scp_enemy_mp_hunt_player();  
    }
  }
  //2d turret that turns left and right
  if ( turret ){
    scp_enemy_turret();
  }

  
} else {
  path_end();
}

//Check for collisions
//scp_platform_collision();  
//Sprite selection
scp_enemy_sprite();

///////////////////////
//Kill the enemy if...
///////////////////////

//Off screen left
if x < view_xview[0] -sprite_width and hspeed < 0 then instance_destroy();
//Off screen right
if x > view_xview[0] + view_wview[0] and hspeed > 0 then instance_destroy();
//Out of hit points
if hp <= 0 then instance_destroy();

//Make sure the target gives exp.  Obstacle collisions should set this to false.
give_exp = true;


