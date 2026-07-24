var fase = real(string_copy(global.nivel, 3, 1));

var quantidade_modulos = fase;

randomize();

var slots = [
    [240,128],
    [398,128],
    [240,238],
    [398,238]
];

var modulos_disponiveis = [
    objControleNum,
    objControleFio,
	objControleQuestoes
];

var slots_livres = [0,1,2,3];


quantidade_modulos = clamp(quantidade_modulos, 1, array_length(slots));


for (var i = 0; i < quantidade_modulos; i++)
{
    var escolha_modulo = irandom(array_length(modulos_disponiveis) - 1);
    var modulo = modulos_disponiveis[escolha_modulo];

    var escolha_slot = irandom(array_length(slots_livres) - 1);
    var slot = slots_livres[escolha_slot];


    instance_create_layer(
        slots[slot][0],
        slots[slot][1],
        "intermedio",
        modulo
    );


    array_delete(slots_livres, escolha_slot, 1);
}
