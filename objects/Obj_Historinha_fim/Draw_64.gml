var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

draw_set_font(global.font_main); 
draw_set_valign(fa_top); 

var espacamento_letras = 4;  
var largura_maxima = 400;    
var altura_linha = 28;       

draw_set_alpha(text_alpha);
draw_set_color(c_white);

var _txt = texto_historia[texto_atual];
var _tam_total = string_length(_txt);

var _linhas = array_create(0);
var _linha_atual = "";
var _palavra_atual = "";

for (var i = 1; i <= _tam_total; i++) {
    var _char = string_char_at(_txt, i);
    
    if (_char == " ") {
        var _linha_teste = _linha_atual + (_linha_atual == "" ? "" : " ") + _palavra_atual;
        var _tam_teste = string_length(_linha_teste);
        var _largura_teste = 0;
        for (var j = 1; j <= _tam_teste; j++) {
            _largura_teste += string_width(string_char_at(_linha_teste, j)) + espacamento_letras;
        }
        
        if (_largura_teste > largura_maxima && _linha_atual != "") {
            array_push(_linhas, _linha_atual);
            _linha_atual = _palavra_atual;
        } else {
            _linha_atual = _linha_teste;
        }
        _palavra_atual = "";
    } else {
        _palavra_atual += _char;
    }
}

if (_palavra_atual != "") {
    var _linha_teste = _linha_atual + (_linha_atual == "" ? "" : " ") + _palavra_atual;
    var _tam_teste = string_length(_linha_teste);
    var _largura_teste = 0;
    for (var j = 1; j <= _tam_teste; j++) {
        _largura_teste += string_width(string_char_at(_linha_teste, j)) + espacamento_letras;
    }
    
    if (_largura_teste > largura_maxima && _linha_atual != "") {
        array_push(_linhas, _linha_atual);
        array_push(_linhas, _palavra_atual);
    } else {
        array_push(_linhas, _linha_teste);
    }
}

var _total_linhas = array_length(_linhas);
var _altura_total = _total_linhas * altura_linha;
var _y_inicial = cy - (_altura_total / 2); 

for (var l = 0; l < _total_linhas; l++) {
    var _linha_texto = string_trim(_linhas[l]); 
    var _tam_linha = string_length(_linha_texto);
    
    var _largura_linha = 0;
    for (var j = 1; j <= _tam_linha; j++) {
        _largura_linha += string_width(string_char_at(_linha_texto, j)) + espacamento_letras;
    }
    
    var _x_atual = cx - (_largura_linha / 2);
    var _y_atual = _y_inicial + (l * altura_linha);
    
    for (var j = 1; j <= _tam_linha; j++) {
        var _char = string_char_at(_linha_texto, j);
        draw_text(_x_atual, _y_atual, _char);
        _x_atual += string_width(_char) + espacamento_letras;
    }
}

var pisca_seta = 0.3 + 0.7 * ((sin(current_time / 400) + 1) / 2);

draw_set_color(c_lime); 
draw_set_alpha(min(text_alpha, pisca_seta)); 
draw_set_halign(fa_center); 

draw_text(cx, cy + 180, "Press E to continue");

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);