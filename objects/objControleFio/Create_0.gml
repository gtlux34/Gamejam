var espacamento = 21;

resolvido = false;
erro = false;

uma_tentativa = true;

fios = [];


familias = ["vermelha","azul","verde","amarela"];
familia_escolhida = familias[irandom(array_length(familias)-1)];


variacoes = [];

switch (familia_escolhida)
{
    case "vermelha":
        variacoes = ["vermelho","salmao","rosa","carmim"];
    break;

    case "azul":
        variacoes = ["azul","ciano","turquesa","anil"];
    break;

    case "verde":
        variacoes = ["verde","limao","oliva","jade"];
    break;

    case "amarela":
        variacoes = ["amarelo","dourado","ocre","bege"];
    break;
}


var indice_correto = irandom(array_length(variacoes)-1);


for (var i = 0; i < 4; i++)
{
    var fio = instance_create_layer(
        x + i * espacamento - 48,
        y - 5,
        "GUIS",
        objFio
    );

    fio.variacao = variacoes[i];
    fio.familia = familia_escolhida;

    fio.dono = id;

    fio.set_cor();

    array_push(fios, fio);
}


luz = instance_create_layer(
    x + 4 * espacamento - 42,
    y - 6,
    "GUIS",
    objLuz
);


luz.dono = id;

luz.familia = familia_escolhida;
luz.variacoes = variacoes;
luz.correta = indice_correto;
luz.variacao_correta = variacoes[indice_correto];


switch(indice_correto)
{
    case 0:
        luz.cor_luz = c_blue;
    break;

    case 1:
        luz.cor_luz = c_red;
    break;

    case 2:
        luz.cor_luz = c_yellow;
    break;

    case 3:
        luz.cor_luz = c_green;
    break;
}
