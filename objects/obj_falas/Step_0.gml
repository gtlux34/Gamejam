timer++;

switch (estado)
{
    case "escondido":

        if (timer >= tempo_escondido)
        {
            visible = true;
            image_index = 0;
            timer = 0;
            estado = "abrindo";
        }

    break;


    case "abrindo":

        if (timer mod vel_anim == 0)
        {
            image_index++;

            if (image_index >= 5)
            {
                image_index = 5;

                // Escolhe uma frase aleatória diferente da última
                var indice;

                do
                {
                    indice = irandom(array_length(falas) - 1);
                }
                until (indice != ultima_fala);

                ultima_fala = indice;
                texto_atual = falas[indice];

                timer = 0;
                estado = "pulando";
            }
        }

    break;


    case "pulando":

        if (timer == room_speed * 1)
            image_index = 6;

        if (timer == room_speed * 2)
            image_index = 7;

        if (timer == room_speed * 3)
            image_index = 6;

        if (timer == room_speed * 4)
            image_index = 5;

        // Fica visível por 7 segundos
        if (timer >= tempo_visivel)
        {
            timer = 0;
            estado = "fechando";
        }

    break;


    case "fechando":

        if (timer mod vel_anim == 0)
        {
            image_index--;

            if (image_index <= 0)
            {
                image_index = 0;
                visible = false;
                timer = 0;
                estado = "escondido";
            }
        }

    break;
}