if ( instance_exists(obj_player_1) && global.spell_ammo[spell_selected] )
{
    //Setup temp variables for the player
    obj_player_1.tmp_spell_to_cast = spell_script;
    obj_player_1.tmp_which_alarm = which_alarm;
    obj_player_1.tmp_spell_selected = spell_selected;
    //Trigger the spell if the alarm for the spell is ready :)
    with( obj_player_1 ){
        if ( alarm[tmp_which_alarm] <= 0 ){
          //Reduce ammo count
          global.spell_ammo[tmp_spell_selected] -= 1;
          script_execute(tmp_spell_to_cast);
          if tmp_reload <= 0 then tmp_reload = 1;
          alarm[tmp_which_alarm] = tmp_reload;
        }
    }
}
