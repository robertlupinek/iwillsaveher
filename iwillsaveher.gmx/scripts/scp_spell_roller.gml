//Set the attack range...
range = 180;

if ( xscale == 1 ) {
  tmp_a_dir = 0;
}
if ( xscale == -1 ) {
  tmp_a_dir = 180;
}

//Create the machine gun attack
repeat(1){
  my_attack = instance_create(x+xscale*10,y,obj_proj_roller);
  my_attack.range = range;
  my_attack.attack = spell_attack + attack;
  my_attack.direction = tmp_a_dir + random(5) - random(5);
  my_attack.image_angle = tmp_a_dir; 
  tmp_reload = 20;
}
//Set the range on the attack
with(my_attack){
  if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
}

//Attack sprite setup
my_wand.attack_1 = 1;
my_wand.image_index = -1;
