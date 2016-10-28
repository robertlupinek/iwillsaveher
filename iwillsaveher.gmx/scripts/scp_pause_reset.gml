//Reset sprites and surfaces :)

if ( !surface_exists(srf_screen) )
{
  surface_free(srf_screen)
}

if ( sprite_exists(screen_sprite) )
{
  sprite_delete( screen_sprite );
}

