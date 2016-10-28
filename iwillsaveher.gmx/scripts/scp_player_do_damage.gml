
tmp_dmg = argument0;
tmp_target = argument1;

tmp_armor = tmp_target.armor;

//Calculate damage done vs armor.  If damage is less than 1 than make be at least 1.
tmp_dmg = tmp_dmg - tmp_armor;
if tmp_dmg <= 0 then tmp_dmg = 1;

//Subtract the target's hp
tmp_target.hp -= tmp_dmg;

//Create the damage text object
tmp_text = instance_create(tmp_target.x,tmp_target.bbox_top,obj_damage_done);
tmp_text.dmg = "-" + string(tmp_dmg);

//Add to the combo
global.combo += 1;
//Set the combo timer :)
if ( instance_exists(obj_controller) ){
  obj_controller.alarm[4] = 15;
}

/* //DRAW COMBO
tmp_text = instance_create(tmp_target.x,tmp_target.bbox_top-20,obj_damage_done);
tmp_text.dmg = "X" + string(global.combo);
tmp_text.gravity = -0.25;
tmp_text.vspeed = 0;
tmp_text.font = global.font_press_start;
*/
