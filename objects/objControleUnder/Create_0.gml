resolvido = false;

var alvo = instance_create_layer(x, y-25, "GUIS", objAcerta);
alvo.dono = id;

var botao = instance_create_layer(x-2, y+20, "GUIS", objBtnMid);
botao.dono = id;
