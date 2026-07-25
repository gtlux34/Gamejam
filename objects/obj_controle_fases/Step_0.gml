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


var total_modulos = instance_number(objControleFio) 
                  + instance_number(objControleNum)
                  + instance_number(objControleQuestoes)
                  + instance_number(objControleSom);



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


with(objControleNum)
{
    if (resolvido)
    {
        completos++;
    }
}


with(objControleQuestoes)
{
    if (resolvido)
    {
        completos++;
    }
}

with (objControleSom)
{
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


if (completos == total_modulos && total_modulos > 0)
{
    ganhar();
    exit;
}
