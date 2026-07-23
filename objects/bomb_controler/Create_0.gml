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

for (var i = 0; i < quantidade_modulos; i++)
{
    var escolha = irandom(array_length(slots_livres)-1);

    modulos[i] = slots_livres[escolha];

    array_delete(slots_livres, escolha, 1);
}

