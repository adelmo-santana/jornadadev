function main()

    local nJogadaUSU
    local cJogadaCPU:= SorteaJogadaCPU()
    local cTextoUsuario

    ACCEPT "Escolha entre: 1 (Pedra), 2 (Papel), 3 (Tesoura): " to nJogadaUSU
    nJogadaUSU:= val(nJogadaUSU)
    cTextoUsuario := ValidarJogada(nJogadaUSU)

    ValidarJogada(nJogadaUSU)
    DefinirVencedor(cJogadaCPU, cTextoUsuario)
return nil


Function SorteaJogadaCPU()

    local nJogadaCPU:= {"Pedra", "Papel", "Tesoura"}
    local nRando:= hb_RandomInt(1,3)
        
return nJogadaCPU[nRando] 

function ValidarJogada(cJogada)

    local nJogadaUsu:= {"Pedra", "Papel", "Tesoura"}


return nJogadaUsu[cJogada]

function DefinirVencedor(cJogada1, cJogada2)
    QOut("Jogada CPU:", cJogada1)

    if cJogada1 = "Pedra" .AND. cJogada2 = "Tesoura"
        QOut("CPU VENCEU!")
    elseif cJogada1 = "Tesoura" .AND. cJogada2 = "Papel"
        QOut("CPU VENCEU!")
    elseif cJogada1 = "Papel" .AND. cJogada2 = "Pedra"
        QOut("CPEU VENCEU!")
    elseif cJogada1 == cJogada2
        QOut("EMPATE!")
    else 
        QOut("JOGADOR VENCEU!")
    end if 

return NIL