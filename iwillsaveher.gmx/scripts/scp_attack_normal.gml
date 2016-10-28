range = 150;
//Attack if in range
if ( distance_to_point(enemy_target.x,enemy_target.y ) <= range ){
  
  if ( xscale == 1 ) {
    tmp_a_dir = 0;
  }
  if ( xscale == -1 ) {
    tmp_a_dir = 180;
  }

  //Create the machine gun attack
  my_attack = instance_create(x,y,obj_attack_normal);
  my_attack.range = range;
  my_attack.attack = 2 + attack;
  my_attack.direction = tmp_a_dir;
  my_attack.image_angle = tmp_a_dir; 
  tmp_reload = 20;
  //Set the range on the attack
  with(my_attack){
    if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
  }
  alarm[1] = tmp_reload - reload;
  if alarm[1] <= 0 then alarm[1] = 1;
 
  //Attack sprite setup
  my_wand.attack_1 = 1;
  my_wand.image_index = 0;
}
