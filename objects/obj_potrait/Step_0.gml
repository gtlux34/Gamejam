if (!chegou)
{
    x += vel;

    if (x >= destino_x)
    {
        x = destino_x;
        chegou = true;
    }
}

var porcentagem = (global.tempo / tempo_max) * 100;



if (porcentagem > 66)
{
    image_index = 0;

    if (!audio_is_playing(snd_musica_gameplay))
    {
        audio_play_sound(snd_musica_gameplay, 1, true);
    }
}
else if (porcentagem > 33)
{
    image_index = 1;
}
else
{
    image_index = 2;
}
