tile_num = 0;

xp = sprite_width + sprite_width / 2;
yp = sprite_height + sprite_height / 2;

xh = sprite_width / 2;
yh = sprite_height / 2;

tw = sprite_width;
th = sprite_height;

//Out of bounds checker 
if x - 1 < 0 then tile_num += 8;
if x + tw + 1 > room_width then tile_num += 2;
if y - 1 < 0 then tile_num += 1;
if y + th + 1 > room_height then tile_num += 4;

//Check right
if position_meeting(x + xp, y + yh,obj_block) then tile_num += 2;
//Check down
if position_meeting(x + xh, y + yp,obj_block) then tile_num += 4;
//Check left
if position_meeting(x - xh, y + yh,obj_block) then tile_num += 8;
//Check up
if position_meeting(x + xh, y - yh,obj_block) then tile_num += 1;

if tile_num = 6 then tile_add(global.tileset,1,1,tw,th,x,y,depth );
if tile_num = 14 then tile_add(global.tileset,2 + tw ,1,tw,th,x,y,depth );
if tile_num = 12 then tile_add(global.tileset,3 + tw * 2,1,tw,th,x,y,depth );

if tile_num = 7 then tile_add(global.tileset,1,2 + th,tw,th,x,y,depth );
if tile_num = 15 then tile_add(global.tileset,2 + tw * 1,2 + th,tw,th,x,y,depth );
if tile_num = 13 then tile_add(global.tileset,3 + tw * 2,2 + th,tw,th,x,y,depth );

if tile_num = 3 then tile_add(global.tileset,1,          3 + th*2,tw,th,x,y,depth );
if tile_num = 11 then tile_add(global.tileset,2 + tw * 1,3 + th*2 ,tw,th,x,y,depth );
if tile_num = 9 then tile_add(global.tileset,3 + tw * 2, 3 + th*2,tw,th,x,y,depth );

if tile_num = 2 then tile_add(global.tileset,1,          4 + th*3,tw,th,x,y,depth );
if tile_num = 10 then tile_add(global.tileset,2 + tw * 1,4 + th*3 ,tw,th,x,y,depth );
if tile_num = 8 then tile_add(global.tileset,3 + tw * 2, 4 + th*3,tw,th,x,y,depth );

if tile_num = 4 then tile_add(global.tileset,4 + tw * 3,1,tw,th,x,y,depth );
if tile_num = 5 then tile_add(global.tileset,4 + tw * 3,2 + th ,tw,th,x,y,depth );
if tile_num = 1 then tile_add(global.tileset,4 + tw * 3, 3 + th*2,tw,th,x,y,depth );

if tile_num = 0 then tile_add(global.tileset,4 + tw * 3, 4 + th*3,tw,th,x,y,depth );



