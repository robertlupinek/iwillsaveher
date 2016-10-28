//Create the stats displays
if ( tmp_stat1 != "" ){
  tmp_stat = instance_create(x,y,obj_stat_up);
  tmp_stat.stat = tmp_stat1;
  tmp_stat.alarm[0] = 1;
}

if ( tmp_stat2 != "" ){
  tmp_stat = instance_create(x,y,obj_stat_up);
  tmp_stat.stat = tmp_stat2;
  tmp_stat.alarm[0] = 15;
}

if ( tmp_stat3 != "" ){
  tmp_stat = instance_create(x,y,obj_stat_up);
  tmp_stat.stat = tmp_stat3;
  tmp_stat.alarm[0] = 30;
}

if ( tmp_stat4 != "" ){
  tmp_stat = instance_create(x,y,obj_stat_up);
  tmp_stat.stat = tmp_stat4;
  tmp_stat.alarm[0] = 45;
}

if ( tmp_stat5 != "" ){
  tmp_stat = instance_create(x,y,obj_stat_up);
  tmp_stat.stat = tmp_stat5;
  tmp_stat.alarm[0] = 60;
}
