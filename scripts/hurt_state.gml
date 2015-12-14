///hurt_state()
// Set the Sprite
sprite_index = spr_player_hurt;

if (hspd != 0) image_xscale = sign(hspd);

// Apply gravity
if (!place_meeting(x, y+1, Solid)) {
    vspd += grav;
} else {
    vspd = 0;
    
    // Use Friction
    apply_friction(acc);
}

direction_move_bounce(Solid);

// Change back to move state
if (hspd == 0 && vspd ==0) {
    image_blend = c_white;
    if (PlayerStats.hp <= 0) {
        PlayerStats.sapphires = 0;
        PlayerStats.hp = PlayerStats.maxhp;
        if (audio_is_playing(snd_boss)) {
            audio_stop_sound(snd_boss)
        }
          if (audio_is_playing(snd_music_germanholiday)) {
            audio_stop_sound(snd_music_germanholiday)
        }
        room_restart();
    }
    
    
    state = move_state;
    
}
