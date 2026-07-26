var mx = mouse_x;
var my = mouse_y;

var spr = Spr_Handler;
var frame = 0;

if (collision_point(mx, my, objControleFio, true, true))
{
    spr = sprTesourinha;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}
else if (collision_point(mx, my, objBotaoNum, true, true))
{
    spr = sprDedinho;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}
else if (collision_point(mx, my, objBotaoResposta, true, true))
{
    spr = sprDedinho;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}
else if (collision_point(mx, my, objBtnAnimal, true, true))
{
    spr = sprDedinho;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}
else if (collision_point(mx, my, objBtnPlay, true, true))
{
    spr = sprDedinho;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}
else if (collision_point(mx, my, objBtnMid, true, true))
{
    spr = sprDedinho;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}
else if (collision_point(mx, my, objBtnJokenpo, true, true))
{
    spr = sprDedinho;

    if (mouse_check_button(mb_left))
    {
        frame = 1;
    }
}

draw_sprite(
    spr,
    frame,
    device_mouse_x_to_gui(0),
    device_mouse_y_to_gui(0)
);