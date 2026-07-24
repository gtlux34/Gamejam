if (keyboard_check_pressed(ord("E"))) {
    ativo = !ativo;
    global.mouse_bloqueado = ativo;
}

if (ativo) {
    if (y > room_height - sprite_height) y -= 10;
} else {
    if (y < room_height) y += 10;
}

if (ativo) {
    if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) pagina++;
    if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) pagina--;

    pagina = clamp(pagina, 0, sprite_get_number(sprLivreta) - 1);
}
