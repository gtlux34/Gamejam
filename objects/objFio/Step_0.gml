if (instance_exists(obj_caixa_tampa))
{
    exit;
}

if (global.mouse_bloqueado) exit;
if (mouse_check_button_pressed(mb_left))
{
    if (position_meeting(mouse_x, mouse_y, id))
    {
        if (!cortado)
        {
            cortado = true;
            image_index = 1;
        }
    }
}
