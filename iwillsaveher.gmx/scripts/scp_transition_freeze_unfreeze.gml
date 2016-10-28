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
    screen_sprite = sprite_create_from_surface(view_surface_id[0],0,0,view_wview[0],view_hview[0],false,false,0,0);
    instance_deactivate_all(true);
}

