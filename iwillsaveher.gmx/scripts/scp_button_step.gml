//If this button is moused over perform the mouse over animation and set all the 
//appropriate variables.
//We also want to trigger the script associated with the button if mb_left is pressed.
if ( scp_mouse_over_check(self) )
{
    if ( mouse_check_button(mb_left) )
    {
        script_execute(button_script);
    }  
    //Only trigger the POP up alarm if moused over for the first time  
    if ( !selected && !alarm[1] ){
      alarm[1] = 10;
      image_xscale = 1;
    }
    
    selected = 1;
}
else 
{
  selected = 0;
}

