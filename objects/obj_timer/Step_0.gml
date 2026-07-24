if (!chegou)
{
    y += vel;

    if (y >= destino_y)
    {
        y = destino_y;
        chegou = true;
    }
}
else
{
    global.tempo -= 1 / game_get_speed(gamespeed_fps);

    if (global.tempo <= 0)
    {
        global.tempo = 0;
    }
}


var diferenca = global.tempo - tempo_anterior;


if (diferenca < -0.05)
{
    tremer = 10;
}


if (diferenca > 0.05)
{
    cor_texto = c_lime;
    tempo_cor = 60;
}


if (tremer > 0)
{
    tremer--;
}


if (tempo_cor > 0)
{
    tempo_cor--;
}
else
{
    cor_texto = c_red;
}


tempo_anterior = global.tempo;
