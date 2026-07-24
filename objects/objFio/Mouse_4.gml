if (!cortado) {
    cortado = true;
    estado = 1; 

    var luz = instance_find(objLuz, 0);

    if (variacao == luz.variacao_correta) {
   
        global.tempo += 20;
        luz.cor_luz = make_color_rgb(0, 200, 100); 
				audio_play_sound(sndConfirma,1.0,0,1.0,0,undefined)
    } else {

        global.tempo -= 20;
        luz.cor_luz = c_gray; 
		audio_play_sound(sndErrado,1.0,0,1.0,0,undefined)
        with (objFio) { cortado = true; }
    }
}