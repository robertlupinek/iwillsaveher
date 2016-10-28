if ( !other.alarm[0] )
{
    scp_enemy_do_damage(attack,other);
    other.alarm[0] = 20;
    //Sounds
    audio_play_sound(snd_player_hit,1,false);
}

//End the path temporarily
path_end();

