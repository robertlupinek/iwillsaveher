//Next experience points goal
exp_next = scp_player_next_level(); 

tmp_stat1 = ""
tmp_stat2 = ""
tmp_stat3 = ""
tmp_stat4 = ""
tmp_stat5 = ""
//Debuggy crap
//if keyboard_check_pressed(vk_space) then global.exp_points[p_index] += 40;

if global.level[p_index] >= global.level_max then global.exp_points[p_index] = 0;

//Level up if you can!  We loop to account for rare cases where a player might multilevel.
while ( global.exp_points[p_index] >= exp_next ){
  //Level up!!!
  if ( global.exp_points[p_index] >= exp_next ){
    //Create level up effects :) 
    tmp_effect = instance_create(x,y,obj_dark_screen);
    tmp_effect.alarm[0] = 30;
    alarm[5] = 30;
  
    global.exp_points[p_index] -= exp_next;
    global.level[p_index] += 1;
    global.level_points[p_index] += 1;
    tmp_stat1 = "skill+1"
    //Next experience points goal
    exp_next = scp_player_next_level();
    //Add stats every level
    //Health
    global.hp_max[p_index] += 1;
    tmp_stat2 = "health+1"
    hp_max = global.hp_max[p_index] + global.item_hp_max[p_index];
    //Add stats every other level for all players
    if ( abs(global.level[p_index]) mod 2 ){
        //Increase attack power
        global.attack[p_index] += 1;
        attack = global.attack[p_index] + global.item_attack[p_index];
        tmp_stat3 = "attack+1"
    }
    else {
        //Increase reload speed
        global.reload[p_index] += 1;
        reload = global.reload[p_index] + global.item_reload[p_index];
        tmp_stat3 = "reload+1"
    }

    //Each character gets a bonus stats every 5 levels
    
    //Player 1 bonus stats
    if ( p_index == 0 ){
        //Every 3 levels
        if ( global.level[p_index] mod 3 == 0 ){
            //Increase attack
            global.attack[p_index] += 1;
            attack = global.attack[p_index] + global.item_attack[p_index];
            tmp_stat4 = "attack+1"
        }
        //At level 5
        if ( global.level[p_index] == 5 ){
            //Increase reload speed
            global.reload[p_index] += 2;
            reload = global.reload[p_index] + global.item_reload[p_index];
            global.level_points[p_index] += 1;
            tmp_stat4 = "reload+1"
            tmp_stat5 = "skill+1"
        }
    }
    
    //Player 2 bonus stats
    if ( p_index == 1 ){
        //Every 3 levels
        if ( global.level[p_index] mod 3 == 0 ){
            //Increase reload speed
            global.reload[p_index] += 1;
            reload = global.reload[p_index] + global.item_reload[p_index];
            tmp_stat4 = "reload+1"
        }
        //At level 5
        if ( global.level[p_index] == 5 ){
            //Increase regen
            global.regen[p_index] += 1;
            regen = global.regen[p_index] + global.item_regen[p_index];
            tmp_stat4 = "regen+1"
        }
    }
    
    //Player 3 bonus stats
    if ( p_index == 2 ){
        //Every 3 levels
        if ( global.level[p_index] mod 3 == 0 ){
            //Increase reload speed
            global.hp_max[p_index] += 1;
            hp_max = global.hp_max[p_index] + global.item_hp_max[p_index];
            tmp_stat4 = "health+1"
        }
        //At level 5
        if ( global.level[p_index] == 5 ){
            //Increase attack
            global.attack[p_index] += 1;
            attack = global.attack[p_index] + global.item_attack[p_index];
            tmp_stat4 = "attack+1"
            //Increase armor
            global.armor[p_index] += 1;
            armor = global.armor[p_index] + global.item_armor[p_index];
            tmp_stat5 = "armor+1"
        }
    }    
    //Refresh health
    hp = hp_max;
    //Create the level stat effect object
    scp_player_level_effects();      
  }

}



