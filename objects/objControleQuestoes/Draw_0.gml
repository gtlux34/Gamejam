draw_self();


draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);


// tempo
tempo_exibicao += 1;


// muda a etapa a cada 3 segundos
if (tempo_exibicao >= 180)
{
    tempo_exibicao = 0;
    etapa_texto++;
}


// trava no D
if (etapa_texto > 4)
{
    etapa_texto = 4;
}


// tamanho do texto
var tamanho = 0.6;



// PERGUNTA
if (etapa_texto == 0)
{
    // quebra mais cedo para caber no sprite
    var texto_pergunta = string_wrap(pergunta, 14);


    for (var i = 0; i < array_length(texto_pergunta); i++)
    {
        draw_text_ext_transformed(
            x-68,
            y-27 + (i * 13),
            texto_pergunta[i],
            -1,
            500,
            tamanho,
            tamanho,
            0
        );
    }
}



// A
if (etapa_texto == 1)
{
    draw_text_ext_transformed(
        x-68,
        y-27,
        "A-" + respostas[0],
        -1,
        500,
        tamanho,
        tamanho,
        0
    );
}



// B
if (etapa_texto == 2)
{
    draw_text_ext_transformed(
        x-68,
        y-27,
        "B-" + respostas[1],
        -1,
        500,
        tamanho,
        tamanho,
        0
    );
}



// C
if (etapa_texto == 3)
{
    draw_text_ext_transformed(
        x-68,
        y-27,
        "C-" + respostas[2],
        -1,
        500,
        tamanho,
        tamanho,
        0
    );
}



// D
if (etapa_texto == 4)
{
    draw_text_ext_transformed(
        x-68,
        y-27,
        "D-" + respostas[3],
        -1,
        500,
        tamanho,
        tamanho,
        0
    );
}



// CORRECT
if (resolvido && resposta == correta)
{
    draw_set_color(c_lime);

    draw_text_ext_transformed(
        x-68,
        y+30,
        "CORRECT",
        -1,
        500,
        0.6,
        0.6,
        0
    );

    draw_set_color(c_white);
}
