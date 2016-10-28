//Regenerate health
if ( hp < hp_max )
{
    hp += argument0;
    if hp > hp_max then hp = hp_max;
    tmp_text = instance_create(x,bbox_top,obj_damage_done);
    tmp_text.dmg = "+" + string(argument0);
    tmp_text.font = global.font_blue;
} 
