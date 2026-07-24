
if (!travado && resposta != "")
{

    if (resposta == correta)
    {

        resolvido = true;

        travado = true;

        global.tempo += 5;


        audio_play_sound(
            sndConfirma,
            1,
            false
        );

    }

    else
    {

        resposta = "";

        global.tempo -= 5;


        audio_play_sound(
            sndErrado,
            1,
            false
        );

    }

}
