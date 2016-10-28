//Set the attack range...
range = 50;

if ( xscale == 1 ) {
  tmp_a_dir = 0;
}
if ( xscale == -1 ) {
  tmp_a_dir = 180;
}

repeat(1){
  my_attack = instance_create(x+xscale*10,y,obj_proj_water_slash);
  my_attack.range = range;
  my_attack.attack = spell_attack + attack;
  my_attack.direction = tmp_a_dir;
  my_attack.hspeed = xscale * 4;
  my_attack.friction = 0.2;
  my_attack.image_xscale = xscale;
  tmp_reload = 20;
}


//Attack sprite setup
my_wand.attack_1 = 1;
my_wand.image_index = -1;
