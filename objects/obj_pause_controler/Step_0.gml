if (keyboard_check_pressed(vk_escape))
{
    paused = !paused;

    if (paused)
    {
        instance_deactivate_all(true);
        instance_activate_object(id);
    }
    else
    {
        instance_activate_all();
    }
}
