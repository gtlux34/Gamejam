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
                  + instance_number(objControleSom)
                  + instance_number(objControleUnder)
                  + instance_number(objControleJoken);

var completos = 0;
var perdeu = false;

// Fios
with (objControleFio)
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

// Numpad
with (objControleNum)
{
    if (resolvido)
    {
        completos++;
    }
}

// Perguntas
with (objControleQuestoes)
{
    if (resolvido)
    {
        completos++;
    }
}

// Som
with (objControleSom)
{
    if (resolvido)
    {
        completos++;
    }
}

// Under
with (objControleUnder)
{
    if (resolvido)
    {
        completos++;
    }
}

// Joken
with (objControleJoken)
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