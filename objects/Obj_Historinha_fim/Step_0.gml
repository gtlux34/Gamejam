if (!carregando_fase) {
    text_alpha = min(text_alpha + fade_speed, 1);
} else {
    text_alpha = max(text_alpha - 0.08, 0);
    exit;
}

if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
{
    if (texto_atual < total_textos - 1)
    {
        texto_atual += 1;
        text_alpha = 0; 
    }
    else
    {
        if (!instance_exists(Obj_Warp)) 
        {
            global.warp_intro = true;
            var inst = instance_create_depth(0, 0, -99999, Obj_Warp);
            inst.target_rm = Rm_Title_Screen; 
            carregando_fase = true;
        }
    }
}