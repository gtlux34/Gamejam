cortado = false;
cor_fio = c_white;
estado = 0;

function set_cor() {
    switch (variacao) {
        case "vermelho": cor_fio = c_red; break;
        case "salmao": cor_fio = make_color_rgb(250,128,114); break;
        case "rosa": cor_fio = c_fuchsia; break;
        case "carmim": cor_fio = make_color_rgb(150,0,24); break;

        case "azul": cor_fio = c_blue; break;
        case "ciano": cor_fio = c_aqua; break;
        case "turquesa": cor_fio = make_color_rgb(64,224,208); break;
        case "anil": cor_fio = make_color_rgb(75,0,130); break;

        case "verde": cor_fio = c_green; break;
        case "limao": cor_fio = make_color_rgb(50,205,50); break;
        case "oliva": cor_fio = make_color_rgb(128,128,0); break;
        case "jade": cor_fio = make_color_rgb(0,168,107); break;

        case "amarelo": cor_fio = c_yellow; break;
        case "dourado": cor_fio = make_color_rgb(255,215,0); break;
        case "ocre": cor_fio = make_color_rgb(204,119,34); break;
        case "bege": cor_fio = make_color_rgb(245,245,220); break;

        default: cor_fio = c_white;
    }
}
image_speed = 0;
