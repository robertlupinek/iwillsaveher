//We add in the view_xview and yview because the view[1] does not move thus
//mouse x is not updated with the default views position since we are using view[1]:)
//Apparently the mouse x uses the relative position of the last drawn view.

x = start_x + view_xview[0];
y = start_y + view_yview[0];


//View 0 is now drawing to a surface vs the screen.
//We need to make sure view 0 exists!
if ( !surface_exists(srf_screen) )
{
  srf_screen = surface_create(view_wview[0], view_hview[0]);
  view_surface_id[0] = srf_screen; //Assign the surface to the view
}
//We also need to make sure that we are drawing the contents of 
//the surface view 0 is drawing 2 in view 1
if ( view_current == 1 )
{
  //Draw the screen surface that is updated by view[0].
  draw_surface(srf_screen, 0, 0);
  if ( paused == 1 )
  {
    //Draw the sprite we created from the view surface.
    //We use a sprite because surfaces are volatile.
    //For example, a minimize will destroy it.
    draw_sprite(screen_sprite,image_index,0,0);
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,false);
    draw_set_alpha(1);
    draw_set_color(c_white);    
    draw_sprite(sprite_index,image_index,start_x,start_y);
    draw_sprite(spr_selection_thingy,image_index,mouse_x,mouse_y);
  }
  else
  {
    //Draw the button  
    draw_sprite(sprite_index,image_index,start_x,start_y);
  }

  
}

