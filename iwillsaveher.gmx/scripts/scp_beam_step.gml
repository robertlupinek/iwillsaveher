tmp_length = argument0;  //Max beam length
tmp_angle = argument1;  //Angle to move 
tmp_step = argument2;   //How may pixels to move per step
tmp_goal = argument3;  //Target object
tmp_block = argument4; //Blocking object
tmp_start_point = argument5;
tmp_return[] = 0;


for ( b=tmp_start_point;b<=tmp_length;b+=tmp_step){

  tmp_x = x + lengthdir_x(b,tmp_angle);
  tmp_y = y + lengthdir_y(b,tmp_angle);

  if ( collision_line(x,y,tmp_x ,tmp_y ,tmp_block,false,true) ){
    break;
  }
  tmp_target = collision_line(x,y,tmp_x ,tmp_y ,tmp_goal,false,true);
  //Do damage
  //Put what ever custom scripts you want to use for when a positive collision occurs.
  if ( tmp_target ){
    tmp_return[0] = tmp_target;
    tmp_return[1] = b;
    return tmp_return;
  }
}
//Return no target was hit
tmp_return[0] = -1;
//Return the last value iterated through the for loop to be used as beam length
tmp_return[1] = b;
return tmp_return;
