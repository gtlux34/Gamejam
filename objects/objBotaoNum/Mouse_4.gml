image_index = 1;
alarm[0] = room_speed/10;
if (instance_exists(obj_caixa_tampa))
{
    exit;
}

if (instance_exists(dono))
{
    if (!dono.travado && string_length(dono.entrada) < 4)
    {
        dono.entrada += string(valor);
    }
}
