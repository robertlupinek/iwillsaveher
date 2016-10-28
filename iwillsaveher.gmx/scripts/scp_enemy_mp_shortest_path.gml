//The object we are going to use to use to find the shortest path to
tmp_target = argument[0];
//Set the last length default from  a super long path length.
//These are used to determine the longest path.
tmp_long_ln = 99999999;
tmp_last_ln = tmp_long_ln;
//Tmp variables for converting the array values to something more readable
tmp_current_target = tmp_target;
tmp_current_ln = 99999999;

//Create the 2d array of all targeted objects
tmp_target_list[] = 0;
for (i = 0; i < instance_count; i += 1;){
  if ( instance_exists(instance_id[i]) )
  { 
    if (object_is_ancestor( instance_id[i].object_index , tmp_target ) || instance_id[i].object_index == tmp_target  ){
      //This 2d array is used to record the potential targets
      //The first dim is used to record the target object instance and the second is the path length to the target
      //second is set thus: 0 = player obj id, 1 = recorded path length to that player 
      tmp_target_list[array_height_2d(tmp_target_list),0] = instance_id[i];
    }
  }
}

//Get closest target from the player array
//Loop through the player list array and record the length of path to player
for ( ps=0;ps<array_height_2d(tmp_target_list);ps+=1)  {
  tmp_current_target = tmp_target_list[ps,0];
  if ( instance_exists( tmp_current_target ) ){
    //This may be expensive.  This will create a path to each player
    //and record it's length.
    scp_enemy_mp_move(tmp_current_target.x,tmp_current_target.y);
    tmp_target_list[ps,1] = path_ln;
  }
  else //Make sure we ALWAYS set a path length even for non-existant players :)
  {
    tmp_target_list[ps,1] = tmp_long_ln;  //Make it a super long path ln
  }
}
  
//Loop through the target list array again and find the shortest path
for ( ps=0;ps<array_height_2d(tmp_target_list);ps+=1){
  //Use some easier vars duder
  tmp_current_target = tmp_target_list[ps,0];
  tmp_current_ln = tmp_target_list[ps,1];
    
  //If the current target we are looping through exists
  if ( instance_exists( tmp_current_target ) ){
    //If we are not checking the first target in the array then 
    //Compare against the previous shortest distance ELSE it is the
    //shortest distance recorded as it is the first.
    if ( ps > 0 ){
      if ( tmp_current_ln < tmp_last_ln ){
        tmp_closest_target = tmp_current_target;
        tmp_last_ln = tmp_current_ln;
      }
    }
    else {
      tmp_closest_target = tmp_current_target;
      tmp_last_ln = tmp_current_ln;
    }
  }
}

return tmp_closest_target;
