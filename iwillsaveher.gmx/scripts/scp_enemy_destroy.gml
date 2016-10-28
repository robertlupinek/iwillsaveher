
if ( hp <= 0  )
{
    tmp_coin = instance_create(x,bbox_bottom - 12,obj_coin);
    tmp_coin.value = gold_value;
    //SHAKE that thang!
    instance_create(x,y,obj_screen_shake);
    
    //Give exp rewards to all players
    if ( instance_exists(obj_player_1) && give_exp ){
      global.exp_points[obj_player_1.p_index] += exp_value;
    }
}
