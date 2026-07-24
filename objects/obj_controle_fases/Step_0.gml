if (fade > 0)
{
    fade -= fade_vel;

    if (fade < 0)
    {
        fade = 0;
    }
}




if (global.tempo <= 0)
{
    perder();
    exit;
}


var total_modulos = instance_number(objControleFio) + instance_number(objControleNum);

var completos = 0;
var perdeu = false;


with(objControleFio)
{
    if (erro)
    {
        perdeu = true;
    }

    if (resolvido)
    {
        completos++;
    }
}


if (perdeu)
{
    perder();
    exit;
}


with(objControleNum)
{
    if (resolvido)
    {
        completos++;
    }
}


if (completos == total_modulos && total_modulos > 0)
{
    ganhar();
    exit;
}