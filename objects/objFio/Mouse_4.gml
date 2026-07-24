if (instance_exists(obj_caixa_tampa))
{
    exit;
}
if (global.mouse_bloqueado) exit;


if (!cortado)
{
    cortado = true;
    estado = 1;
    image_index = 1;
}
