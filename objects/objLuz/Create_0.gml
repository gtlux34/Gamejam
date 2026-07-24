
if (!variable_instance_exists(id, "familia")) {
    familia = "default";
}

cor_luz = c_white;
variacoes = ["default","default","default","default"];




if (!variable_instance_exists(id, "familia")) {
    familia = "default";
}

cor_luz = c_white;
variacoes = ["default","default","default","default"];


switch (familia) {
    case "vermelha":
        // Luz azul → fio vermelho (c_red)
        // Luz vermelha →fio salmão (c_salmon)
        // Luz amarela → fio rosa (c_fuchsia)
        // Luz verde → fio carmim (RGB 150,0,24)
        variacoes = ["salmao","vermelho","rosa","carmim"];
        break;

    case "azul":
        // Luz azul → fio azul (c_blue)
        // Luz vermelha → fio ciano (c_aqua)
        // Luz amarela → fio turquesa (RGB 64,224,208)
        // Luz verde → fio anil (RGB 75,0,130)
        variacoes = ["azul","ciano","turquesa","anil"];
        break;

    case "verde":
        // Luz azul → fio verde (c_green)
        // Luz vermelha → fio limão (RGB 50,205,50)
        // Luz amarela → fio oliva (RGB 128,128,0)
        // Luz verde → fio jade (RGB 0,168,107)
        variacoes = ["verde","limao","oliva","jade"];
        break;

    case "amarela":
        // Luz azul → fio amarelo (c_yellow)
        // Luz vermelha → fio dourado (RGB 255,215,0)
        // Luz amarela → fio ocre (RGB 204,119,34)
        // Luz verde → fio bege (RGB 245,245,220)
        variacoes = ["amarelo","dourado","ocre","bege"];
        break;
}

var escolha = irandom(3);

switch (escolha) {
    case 0: cor_luz = c_blue;   variacao_correta = variacoes[0]; break;
    case 1: cor_luz = c_red;    variacao_correta = variacoes[1]; break;
    case 2: cor_luz = c_yellow; variacao_correta = variacoes[2]; break;
    case 3: cor_luz = c_green;  variacao_correta = variacoes[3]; break;
}
