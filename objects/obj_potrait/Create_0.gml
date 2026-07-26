destino_x = 68;
chegou = false;
vel = 6;
tempo_max = global.tempo;
image_speed = 0;
musica = -1;

musica = audio_play_sound(snd_musica_gameplay, 1, true);
audio_sound_pitch(musica, 1);