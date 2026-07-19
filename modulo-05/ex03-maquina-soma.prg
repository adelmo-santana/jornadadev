Function Main()
    Local nTotal:=0 , nQtd:= 0, nInicio, nNum
    
    hb_cdpSelect("PT850")

    QOut("M�quina de Soma!")
    QOut("Digite n�meros e ao final veja a soma de todos eles.")
    QOut("Ao digitar zero, a m�quina se encerra.")

    // enquanto o valor de entrada for diferente de 0, ele continuara somando os números digitados
    while .T. 
        ACCEPT "Somando: " to nNum
        nTotal+= val(nNum)
        nNum:= val(nNum)

        if nNum = 0
            exit
        endif
        nQtd++
    end do
    QOut("Zero digitado.")
    QOut("A soma de todos os n�meros � de: ", alltrim(str(nTotal)))
    QOut("A quantidade de n�meros somados foi de: ", alltrim(str(nQtd)))
    
Return NIL