if (!chegou)
{

    x += vel;

    if (x >= destino_x)
    {
        x = destino_x;
        chegou = true;
    }
}
var porcentagem = (global.tempo / tempo_max) * 100;

if (porcentagem > 66) {
    image_index = 0; 
}
else if (porcentagem > 33) {
    image_index = 1; 
}
else {
    image_index = 2; 
}
