var mundo = real(string_copy(global.nivel, 1, 1));
var fase = real(string_copy(global.nivel, 3, 1));

quantidade_modulos = fase;
randomize();

slots = [
    [240,128],
    [398,128],
    [240,238],
    [398,238]
];

slots_livres = [0,1,2,3];
modulos = [];

for (var i = 0; i < quantidade_modulos; i++) {
    var escolha = irandom(array_length(slots_livres)-1);
    modulos[i] = slots_livres[escolha];
    array_delete(slots_livres, escolha, 1);
}

for (var i = 0; i < array_length(modulos); i++) {
    var slot = modulos[i];
    instance_create_layer(slots[slot][0], slots[slot][1], "intermedio", onj_template);
}

if (array_length(slots_livres) > 0) {
    var escolha_fio = irandom(array_length(slots_livres)-1);
    var slot_fio_index = slots_livres[escolha_fio];
    var slot_fio = slots[slot_fio_index];

    instance_create_layer(slot_fio[0], slot_fio[1], "intermedio", objControleFio);
}
