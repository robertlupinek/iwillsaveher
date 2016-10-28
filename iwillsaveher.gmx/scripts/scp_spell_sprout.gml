range = 180

audio_play_sound(snd_game_over,1,false);

if ( xscale == 1 ) {
  tmp_a_dir = 0;
}
if ( xscale == -1 ) {
  tmp_a_dir = 180;
}

my_attack = instance_create(x+xscale*10,y,obj_proj_sprout_1);
my_attack.range = range;
my_attack.attack = spell_attack + attack;
my_attack.dir = tmp_a_dir;
my_attack.alarm[0] = range;
tmp_reload = 50;

//Attack sprite setup
my_wand.attack_1 = 1;
my_wand.image_index = -1;

