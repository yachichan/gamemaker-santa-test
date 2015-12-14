//take_damage();
    if (state != hurt_state) {
        audio_emitter_pitch(audio_em, 1.6);
        audio_emitter_gain(audio_em, 1.4);
        audio_play_sound_on(audio_em, snd_ouch, false, 8);
        
        image_blend = make_colour_rgb(128, 174, 255);
        vspd = -15
        hspd = (sign(x-other.x)*6);
        
        state = hurt_state;
        
        move(Solid);
        
        if (instance_exists(PlayerStats)) {
            PlayerStats.hp -= 1;
        }
    }
