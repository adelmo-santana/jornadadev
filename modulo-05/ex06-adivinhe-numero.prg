Function Main()
    Local nTentativa, nNumSecreto, nTentaNum
    nTentativa:= 7
    nNumSecreto:= HB_RandomInt(1,100)

    hb_cdpSelect("PT850")

    QOut("Adivinhe o n�mero!")
    QQOut("Tente acertar o n�mero secreto, voc� tem 7 tentativas!")
    QOut()

    // enquanto o numero de tentativas for maior que 0, o usuario podera tentar acertar o numero secreto
    while nTentativa > 0
        ACCEPT "Digite o n�mero: " to nTentaNum
        nTentaNum:= val(nTentaNum)

        if nTentaNum < nNumSecreto
            QOut("Esse n�mero � menor que o n�mero secreto!")
            QOut()
        elseif nTentaNum > nNumSecreto
            QOut("Esse n�mero � maior que o n�mero secreto!")
            QOut()
        else 
            QOut("Parab�ns, voc� acertou em ", alltrim(str(nTentativa)), "Tentativas")
            exit
        end if
        nTentativa--
        QOut("Tentativas restantes: ", alltrim(str(nTentativa)))
    end do
  
    QOut("N�mero secreto: ", alltrim(str(nNumSecreto)))
Return NIL