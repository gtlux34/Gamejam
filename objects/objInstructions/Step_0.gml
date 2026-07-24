if (keyboard_check_pressed(ord("E"))) {
    ativo = !ativo;
}

if (ativo) {
    if (y > room_height - sprite_height) y -= 10;
} else {
    if (y < room_height) y += 10;
}

if (ativo) {
    if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) pagina++;
    if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) pagina--;

    if (pagina < 0) pagina = 0;
    if (pagina >= sprite_get_number(sprLivreta)) pagina = sprite_get_number(sprLivreta)-1;
}
