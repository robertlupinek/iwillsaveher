if ( keyboard_check_pressed(ord('R') ) )
{
    game_restart();
}


//If a coin was collected
//do a little effect for the text for score:)
if ( alarm[1] )
{
    xscale = 1.05;
    yscale = 1.05;
}
else
{
    xscale = 1;
    yscale = 1;
}

//Allow the mouse to move in a grid
scp_controller_grid_mouse();

//Move the player in a grid fashion :)
//Kinda like a slider game
if ( global.grid ){
  scp_controller_grid_move();
}


//Trigger actions

//If the selected player is no more then we should deselect them...
if ( !instance_exists( player_id ) )
{
  obj_controller.player_selected = 0;
  //Set the icon for the mouse
  obj_controller.my_selection_thingy.state = 0;  
}

//Game over
if ( !instance_exists(obj_player_parent) )
{
    if alarm[3] <= 0 alarm[3] = 30;
}

if ( keyboard_check_pressed(ord('N') ) )
{
    instance_create(x,y,obj_transition_blocks);
}



//Key presses 

if ( keyboard_check_pressed(ord('P') ) )
{
  //Create the pause selection object and pause the screen
  if ( !instance_exists(obj_pause_select) ){
    tmp_pause = instance_create(x,y,obj_pause_select);
    with(tmp_pause){scp_pause_select_freeze_unfreeze(1);}
  }
  else{
    with(tmp_pause){scp_pause_select_freeze_unfreeze(0);}  
  }
}


if ( keyboard_check(ord('Z') ) )
{
    with(obj_button_p1){script_execute(button_script);}
}
if ( keyboard_check(ord('X') ) )
{
    with(obj_button_p2){script_execute(button_script);}
}
if ( keyboard_check_pressed(ord('C') ) )
{
    with(obj_button_p3){script_execute(button_script);}    
}
if ( keyboard_check_pressed(ord('V') ) )
{
    with(obj_button_spell_multi){script_execute(button_script);}    
}
if ( keyboard_check_pressed(ord('B') ) )
{
    with(obj_button_action){script_execute(button_script);}    
}

//Cast the spell!!!!
if ( mouse_check_button_pressed(mb_right)  ){
    with(obj_button_spell_multi){script_execute(button_script);}
}

