
tmp_dmg = argument0;
tmp_target = argument1;

tmp_armor = tmp_target.armor;

//Calculate damage done vs armor.  If damage is less than 1 than make be at least 1.
tmp_dmg = tmp_dmg - tmp_armor;
if tmp_dmg <= 0 then tmp_dmg = 1;

//Subtract the target's hp
tmp_target.hp -= tmp_dmg;

tmp_text = instance_create(tmp_target.x,tmp_target.bbox_top,obj_damage_done);
tmp_text.dmg = "-" + string(tmp_dmg);
