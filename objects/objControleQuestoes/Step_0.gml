// Verifica resposta da questão

if (!travado && resposta != "")
{

    // Resposta correta
    if (resposta == correta)
    {

        resolvido = true;

        travado = true;


        // recompensa de tempo
        global.tempo += 5;


        audio_play_sound(
            sndConfirma,
            1,
            false
        );

    }


    // Resposta errada
    else
    {

        resposta = "";


        // perde tempo
        global.tempo -= 5;


        audio_play_sound(
            sndErrado,
            1,
            false
        );

    }

}
