//Reset the display since it fixes interpolation issues with scaling etc
display_reset(0,false);

//Turn music on and off
global.music = false;

///////////////////////////////////////
//Switch betwen movement types

//Movement with pathfinding
global.mp = true;
//Simple point and click movement
global.mouse = false;
//Moving with keyboard
global.keyboard = true;
//Grid game play?
global.grid = false;



//Do players auto target?
global.auto_target = true;

//Setup screen borders
global.bottom_border = room_height;
global.top_border = 20;
global.left_border = 0;
global.right_border = 0;

//Make level for players allowed
global.level_max = 12;

//Selected player
global.p_selected[0] = 1;
global.p_selected[1] = 1;
global.p_selected[2] = 0;
global.p_selected_last = 0;



//////////////////////
//Player 1
//Natural Stats
global.hp_max[0] = 6; //Starting hitpoints
global.reload[0] = 2; //Reload bonus
global.armor[0] = 0; //Armor bonus
global.attack[0] = 0; //Attack Bonus
global.regen[0] = 0; //Regen bonus
global.weapon[0] = 0; //Which weapon is equiped - determines default attack
//Leveling
global.level[0] = 1;
global.exp_points[0] = 0;
global.level_points[0] = 1;
//Gifted by items
global.item_hp_max[0] = 0; //Starting hitpoints
global.item_reload[0] = 0; //Reload bonus
global.item_armor[0] = 0; //Armor bonus
global.item_attack[0] = 0; //Attack Bonus
global.item_regen[0] = 0; //Regen bonus
global.action[0] = 0; //Which action is equiped

//////////////////////
//Player 2
//Natural Stats
global.hp_max[1] = 2; //Starting hitpoints
global.reload[1] = 0; //Reload bonus
global.armor[1] = 0; //Armor bonus
global.attack[1] = 0; //Attack Bonus
global.regen[1] = 0; //Regen bonus
global.weapon[1] = 0; //Which weapon is equiped - determines default attack
//Leveling
global.level[1] = 1;
global.exp_points[1] = 0;
global.level_points[1] = 1;
//Gifted by items
global.item_hp_max[1] = 1; //Starting hitpoints
global.item_reload[1] = 0; //Reload bonus
global.item_armor[1] = 0; //Armor bonus
global.item_attack[1] = 0; //Attack Bonus
global.item_regen[1] = 0; //Regen bonus
global.action[1] = 0; //Which action is equiped


//////////////////////
//Player 3
//Natural Stats
global.hp_max[2] = 2; //Starting hitpoints
global.reload[2] = 0; //Reload bonus
global.armor[2] = 0; //Armor bonus
global.attack[2] = 0; //Attack Bonus
global.regen[2] = 0; //Regen bonus
global.weapon[2] = 0;  //Which weapon is equiped - determines default attack
//Leveling
global.level[2] = 1;
global.exp_points[2] = 0;
global.level_points[2] = 1;
//Gifted by items
global.item_hp_max[2] = 2; //Starting hitpoints
global.item_reload[2] = 0; //Reload bonus
global.item_armor[2] = 0; //Armor bonus
global.item_attack[2] = 0; //Attack Bonus
global.item_regen[2] = 0; //Regen bonus
global.action[2] = 0; //Which action is equiped

//Setup the spells, there scripts, display characteristics and levels.
scp_start_controller_spells();


//Items
global.item_lvl[0] = 1;
global.item_lvl[0] = 1;
global.item_lvl[0] = 1;
global.item_lvl[0] = 1;

//Fonts
global.font_blue = font_add_sprite(spr_font_blue,ord('!'),true,1);
global.font_score = font_add_sprite(spr_font_score,ord('!'),true,1);
global.font_white = font_add_sprite(spr_font_white,ord('!'),true,1);
global.font_red = font_add_sprite(spr_font_red,ord('!'),true,1);
global.font_press_start = font_add_sprite(spr_font_press_start,ord('!'),true,1);
global.font_text = font_add_sprite(spr_font_text,ord('!'),true,1);
global.font_blue_press_start = font_add_sprite(spr_font_blue_press_start,ord('!'),true,1);

//Points
global.points = 10000;

//Which spell is selected
global.spell = 0;


//Tilesets 
global.tileset = bg_tiles;

//Start the game
room_goto_next();
