var timer = instance_create_layer(320, -100, "Instances", obj_timer);
timer.destino_y = 32;
timer.chegou = false;

var portrait = instance_create_layer(-100, 283, "Instances", obj_potrait);
portrait.destino_x = 68;
portrait.chegou = false;
global.bomba_bloqueada = false;
