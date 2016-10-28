//Move towards the player

if ( instance_exists(obj_player_parent) ){
    //Find the shortest path to the player...
    tmp_target = scp_enemy_mp_shortest_path(obj_player_parent);
    //Move towards the closest player or other target...
    if ( instance_exists(tmp_target) ){
      scp_enemy_mp_move(tmp_target.x,tmp_target.y);
      //Start moving on the path if one was found
      if ( tmp_path_results ){
        path_start(my_path,move_speed,0,0);
      }
    }
}
