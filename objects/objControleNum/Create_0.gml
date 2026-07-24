senhas_possiveis = [1789,1492,1989,1969,1822,1945];

senha = string(senhas_possiveis[irandom(array_length(senhas_possiveis)-1)]);

entrada = "";
travado = false


var espacamento = 19;
var start_x = x+24;
var start_y = y-9;

var numero = 1;
for (var linha = 0; linha < 3; linha++) {
    for (var coluna = 0; coluna < 3; coluna++) {
        var botao = instance_create_layer(start_x + coluna*espacamento, start_y + linha*espacamento, "GUIS", objBotaoNum);
        botao.valor = numero; 
        numero++;
    }
}