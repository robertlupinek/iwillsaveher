mouse_over = scp_mouse_over_check(self.id);
image_index = paused * 2;

if ( mouse_check_button(mb_left) && mouse_over )
{
    image_index += 1;
}

if ( ( mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord('P') ) ) && mouse_over  )
{
    mouse_clear(mb_left); //Stop anything else from firing off
    
    if  ( paused == 1 )
    {
        paused = 0 
        instance_activate_all();
        scp_pause_reset();
    }
    else
    {
        //Create the sprite from the view surface.
        //We use a sprite because surfaces are volatile.
        //For example, a minimize will destroy it. 
        screen_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
        paused = 1;
        instance_deactivate_all(true);
    }
}
