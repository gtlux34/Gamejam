familias = [
    "vermelho",
    "azul",
    "verde"
];

familia_escolhida = choose(familias[0], familias[1], familias[2]);

fio_correto = noone;

var lista = [];

with (objWire)
{
    if (familia == other.familia_escolhida)
    {
        array_push(lista, id);
    }
}

fio_correto = lista[irandom(array_length(lista) - 1)];