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

        //Make sure the surface exists.
        if ( !surface_exists(srf_screen) ){
          //We need to make sure the surface exists that we are drawing view 0 to.
          srf_screen = surface_create(view_wview[0], view_hview[0]);
        }
        //Make sure that view0 is drawing to the surface.
        //View 1 should only be drawing this surface...
        if ( view_surface_id[0] != srf_screen){
          view_surface_id[0] = srf_screen
        }

    }
    else
    {
        //We need to make sure the surface exists that we are drawing view 0 to.
        if ( !surface_exists(srf_screen) )
        {
            srf_screen = surface_create(view_wview[0], view_hview[0]);
            view_surface_id[0] = srf_screen;
        }  
        //Create the sprite from the view surface.
        //We use a sprite because surfaces are volatile.
        //For example, a minimize will destroy it.        
        screen_sprite = sprite_create_from_surface(srf_screen,0,0,view_wview[0],view_hview[0],false,false,0,0);
        paused = 1;
        instance_deactivate_all(true);
    }
}
