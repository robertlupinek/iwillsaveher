//Set the attack range...
range = 82;

if ( xscale == 1 ) {
  tmp_a_dir = 0;
}
if ( xscale == -1 ) {
  tmp_a_dir = 180;
}

//Create the beam core
my_attack = instance_create(x+xscale*10,y,obj_proj_ice_maker);
my_attack.range = range;
my_attack.image_angle = tmp_a_dir;
my_attack.attack = spell_attack + attack;
my_attack.image_yscale = xscale;
my_attack.hspeed = xscale * 2;
//my_attack.hspeed = 2 * xscale;
tmp_reload = 20;

//Set the range on the attack
my_attack.alarm[0] = range;

//Attack sprite setup
my_wand.attack_1 = 1;
my_wand.image_index = -1;
