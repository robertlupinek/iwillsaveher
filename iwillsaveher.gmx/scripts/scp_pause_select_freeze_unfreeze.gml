//Unfreeze the screen
global.pause_select = argument[0];

if  ( global.pause_select == 0 ){
    instance_activate_all();
    scp_pause_select_reset();
    instance_destroy();
} //Freeze the screen
else {
    //Create the sprite from the view surface.
    //We use a sprite because surfaces are volatile.
    //For example, a minimize will destroy it.        
    screen_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
    instance_deactivate_all(true);
    //Activate all the blocking objects so that the line collision for the player
    //will show that there is a block to collide with.
    instance_activate_object(obj_block);
    instance_activate_object(obj_player_parent);
    instance_activate_object(obj_controller);
    instance_activate_object(obj_selection_thingy);
    instance_activate_object(obj_camera);
    
    obj_player_parent.depth = -10000001
    obj_controller.depth = -10000002
}

