image_index = 1;


alarm[0] = room_speed/10;



if (instance_exists(obj_caixa_tampa))
{
    exit;
}



if (global.mouse_bloqueado)
{
    exit;
}



audio_play_sound(
sndClique,
0,
false
);



if (instance_exists(dono))
{

    if (!dono.travado)
    {

        dono.resposta = valor;

    }

}
