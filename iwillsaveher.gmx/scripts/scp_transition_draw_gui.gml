//Draw some darkness before transtioning in at level start
//We place this in the draw gui to avoid just drawing a giant blank square into the 
//application surface. :)
if (  level_start == 1  && alarm[1] ) {
      draw_set_color(c_black);
      draw_set_alpha(1);
      draw_rectangle(view_xview[0], view_yview[0],surface_get_width(application_surface),surface_get_height(application_surface),false);
}
