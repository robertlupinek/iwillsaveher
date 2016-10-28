//The purpose of this script is to create sprites out of other sprites, or little chunks

//Chunk size
chunk_sprite = argument0;
chunk_size =   argument1;
chunk_x_org =  argument2;
chunk_y_org =  argument3;
chunk_start_y = argument4;
chunk_xscale = argument5;
chunk_yscale = argument6;
chunk_type = argument7;

//Number veritical sections to the sprite chunk or r for rows
chunk_r = floor( sprite_get_height(chunk_sprite) / chunk_size );
//Number of horizontal secitions to the sprite chunk or c for columns
chunk_c = floor( sprite_get_width(chunk_sprite) / chunk_size );

//If xscale = 1


for ( rr = 0;rr < chunk_r;rr+=1)
  {
    for ( cc = 0;cc < chunk_c;cc+=1)
    {
        if chunk_xscale = 1 then chunk = instance_create(chunk_x_org + cc * chunk_size,chunk_y_org +rr * chunk_size,obj_chunk );
        //Draw the sprite parts in reverse x postion if you xscale is reversed.
        //This keeps the redraw chunks from looking like theorignal nonscalled sprite butw with scaled chunks.  Looks dumb that way. :)
        //The chunk_c - cc is basically doing that by drawing the left most section of the sprite 
        //at the farthest right position.
        if chunk_xscale = -1 then chunk = instance_create(chunk_x_org + ( chunk_c - cc ) * chunk_size,chunk_y_org +rr * chunk_size,obj_chunk )
        chunk.sprite_index = chunk_sprite;
        
        //Starting position to draw chunk of the chunk spirte
        chunk.l = cc * chunk_size;
        chunk.t = rr * chunk_size;
        ;
        //Set the dimensions of the chunks
        chunk.w = chunk_size;
        chunk.h = chunk_size;
        //X and Y scale
        chunk.image_xscale = chunk_xscale;
        chunk.image_yscale = chunk_yscale;
        //Chunk behavior
        chunk.type = chunk_type;
        //Falls down
        if ( chunk_type == 0 ){
          //Just some default chunk physics
          chunk.start_y = chunk_start_y - 2 + random(4);         
          chunk.speed = 1 + random(0.02);
          chunk.chunk_dir = 45 + random(10);
        }
        //Explodes
        if ( chunk_type == 1 ){
          //Just some default chunk physics       
          chunk.speed = 1 + random(1);
          chunk.direction = 0 + random(270);
        }
        
    } 
  }


