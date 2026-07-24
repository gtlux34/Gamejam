if (abrindo)
{
    if (fase == 0)
    {
        // Sobe
        y -= 3;

        if (y <= destino_y)
        {
            fase = 1;
        }
    }
    else
    {
  
        x += 6;
    }

    if (x > room_width + sprite_width)
    {
        instance_destroy();
    }
}
