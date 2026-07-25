sons = [sndCat, sndDog, sndParrot, sndPig];
animais = ["cat","dog","parrot","pig"];

som_atual = irandom(array_length(sons)-1);
esperando_resposta = false;
resolvido = false;


var botaoPlay = instance_create_layer(x - 42, y+20, "GUIS", objBtnPlay);
botaoPlay.dono = id;

var posicoes = [
    [x+7,  y-20],  // topo esquerdo
    [x+43, y-20],  // topo direito
    [x+7,  y+10],  // baixo esquerdo
    [x+43, y+10]   // baixo direito
];

for (var i = 0; i < 4; i++) {
    var bx = posicoes[i][0];
    var by = posicoes[i][1];

    var botao = instance_create_layer(bx, by, "GUIS", objBtnAnimal);
    botao.dono = id;
    botao.animal = animais[i];

    switch (animais[i]) {
        case "cat":    botao.sprite_index = sprBtnCat; break;
        case "dog":    botao.sprite_index = sprBtnDog; break;
        case "parrot": botao.sprite_index = sprBtnImuSama; break;
        case "pig":    botao.sprite_index = sprBtnPig; break;
    }

    if (i >= 2) {
        botao.depth = -50;
    } else {
        botao.depth = 0;
    }
}