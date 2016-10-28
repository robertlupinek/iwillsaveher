//Unfreeze the screen
pause = argument0;
if  ( argument0 == 0 ){
    instance_activate_all();
    scp_transition_reset();

} //Freeze the screen
else {

    //Create the sprite from the view surface.
    //We use a sprite because surfaces are volatile.
    //For example, a minimize will destroy it.        
    screen_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
    instance_deactivate_all(true);
}

