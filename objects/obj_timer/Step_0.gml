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
