if ( instance_exists(obj_player_parent) && instance_exists(obj_controller.player_id) )
{
    //Make sure there is ammo
    if ( global.spell_ammo[spell_selected] ){
      //Setup temp variables for the player
      obj_controller.player_id.tmp_spell_to_cast = spell_script;
      obj_controller.player_id.tmp_which_alarm = which_alarm;
      obj_controller.player_id.tmp_spell_selected = spell_selected;
      //Trigger the spell if the alarm for the spell is ready :)
      with( obj_controller.player_id ){
        if ( alarm[tmp_which_alarm] <= 0 ){
          //Reduce ammo count
          global.spell_ammo[tmp_spell_selected] -= 1;
          script_execute(tmp_spell_to_cast);
          if spell_reload <= 0 then spell_reload = 1;
          alarm[tmp_which_alarm] = spell_reload;
        }
      }
    }
}
