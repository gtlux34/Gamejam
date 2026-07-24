if (!resolvido && !erro)
{
    for (var i = 0; i < array_length(fios); i++)
    {
        if (instance_exists(fios[i]))
        {
            if (fios[i].dono == id && fios[i].cortado)
            {
                if (fios[i].variacao == luz.variacao_correta)
                {
                    resolvido = true;

                    global.tempo += 20;
                    luz.cor_luz = make_color_rgb(0,200,100);

                    audio_play_sound(sndConfirma,1,false);
                }
                else
                {
                    erro = true;

                    global.tempo -= 20;
                    luz.cor_luz = c_gray;

                    audio_play_sound(sndErrado,1,false);
                }

                break;
            }
        }
    }
}
