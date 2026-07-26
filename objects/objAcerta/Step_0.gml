if (!dono.resolvido) {
    x += velocidade * direcao;

    if (x >= pos_inicial + limite) direcao = -1;
    if (x <= pos_inicial - limite) direcao = 1;
}
