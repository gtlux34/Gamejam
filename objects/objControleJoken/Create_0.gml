opcoes = ["Rock","Paper","Scissors"];
escolha_maquina = opcoes[irandom(array_length(opcoes)-1)];

resolvido = false;
mensagem = "Choice\nmade...";
depth = 100;

var sprites = [sprPedra, sprPapel, sprTesoura];
for (var i = 0; i < 3; i++) {
    var bx = x + 45;
    var by = y + (i * 26);

    var botao = instance_create_layer(bx, by - 30, "GUIS", objBtnJokenpo);
    botao.dono = id;
    botao.jogada = opcoes[i];
    botao.sprite_index = sprites[i];

    botao.depth = -(i+1) * 10; 
}
