Function Main()

    Local nIdade, nDependente, nValorMensal, nQntDependente
    nQntDependente:= 90

    hb_cdpSelect("PT850")

    ACCEPT "Digite sua idade: " to nIdade
    ACCEPT "Digite o n£mero de dependentes: : " to nDependente

    nIdade:= Val(nIdade)
    nDependente:= Val(nDependente) 

    if nIdade < 0 .OR. nDependente < 0
        QOut("Idade ou dependentes inv lidos. ")

    elseif nIdade <= 25
        nValorMensal:= 180
        nValorMensal:= nValorMensal + (nDependente * nQntDependente)
        QOut("Valor da mensalidade: " + AllTrim(Str(nValorMensal, 10, 2)))
    elseif nIdade > 25 .AND. nIdade < 41
        nValorMensal:= 260
        nValorMensal:= nValorMensal + (nDependente * nQntDependente)
        QOut("Valor da mensalidade: " + AllTrim(Str(nValorMensal, 10, 2)))
    
    elseif nIdade > 40 .AND. nIdade < 61
        nValorMensal:= 360
        nValorMensal:= nValorMensal + (nDependente * nQntDependente)
        QOut("Valor da mensalidade: " + AllTrim(Str(nValorMensal, 10, 2)))
    else
        nValorMensal:= 520
        nValorMensal:= nValorMensal + (nDependente * nQntDependente)
        QOut("Valor da mensalidade: " + AllTrim(Str(nValorMensal, 10, 2)))
    end if
Return NIL