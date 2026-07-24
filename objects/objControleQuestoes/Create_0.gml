tempo_exibicao = 0;
etapa_texto = 0;


function string_wrap(txt, limite)
{
    var resultado = [];
    var palavras = string_split(txt, " ");

    var linha = "";

    for (var i = 0; i < array_length(palavras); i++)
    {
        var teste = linha + palavras[i] + " ";

        if (string_length(teste) > limite)
        {
            array_push(resultado, linha);
            linha = palavras[i] + " ";
        }
        else
        {
            linha = teste;
        }
    }

    array_push(resultado, linha);

    return resultado;
}


var perguntas =
[
    [
        "Red planet?",
        "Earth",
        "Mars",
        "Venus",
        "Saturn",
        "B"
    ],

    [
        "Jungle king?",
        "Lion",
        "Tiger",
        "Elephant",
        "Wolf",
        "A"
    ],

    [
        "Triangle sides?",
        "2",
        "4",
        "3",
        "5",
        "C"
    ],

    [
        "France capital?",
        "London",
        "Paris",
        "Rome",
        "Madrid",
        "B"
    ],

    [
        "Mona Lisa painter?",
        "Picasso",
        "Da Vinci",
        "Van Gogh",
        "Michelangelo",
        "B"
    ]
];



var p = perguntas[irandom(array_length(perguntas)-1)];



pergunta = p[0];


respostas =
[
    p[1],
    p[2],
    p[3],
    p[4]
];


correta = p[5];



resposta = "";

resolvido = false;

travado = false;



var espacamento = 22;


var start_x = x + 31;

var start_y = y - 20;



var letras = ["A","B","C","D"];


var i = 0;



for (var linha = 0; linha < 2; linha++)
{
    for (var coluna = 0; coluna < 2; coluna++)
    {

        var botao = instance_create_layer(
            start_x + coluna * espacamento,
            start_y + linha * espacamento,
            "GUIS",
            objBotaoResposta
        );


        botao.valor = letras[i];

        botao.texto = respostas[i];

        botao.dono = id;


        i++;

    }
}
