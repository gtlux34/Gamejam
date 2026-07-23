draw_self();

for (var i = 0; i < array_length(modulos); i++)
{
    var slot = modulos[i];

    draw_sprite(
        template_slots,
        0,
        slots[slot][0],
        slots[slot][1]
    );
}
