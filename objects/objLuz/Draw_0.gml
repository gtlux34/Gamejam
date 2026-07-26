draw_sprite_ext(sprLuz, 0, x, y, 1, 1, 0, cor_luz, 1);
var pulsar = 0.5 + 0.5 * sin(current_time/200);

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprLuz, 0, x, y, 1.3, 1.3, 0, cor_luz, pulsar);
gpu_set_blendmode(bm_normal);
