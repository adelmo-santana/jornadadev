Function Main()
    Local nSalario:= 0
    Local nSalarioNovo
    Local nReajuste

    hb_cdpSelect("PT850")
    QOut("Reajuste de sal rio!")

    ACCEPT "Primeiro, digite seu sal rio: " to nSalario
    nSalario:= Val(nSalario)

    if nSalario < 1 .OR. IsDigit(nSalario)
        QOut("Sal rio inv lido.")

    elseif nSalario < 1000 
        nReajuste:= 0.15
        nSalarioNovo:= nSalario + (nSalario*nReajuste)
        QOut("Reajuste de sal rio: ", AllTrim(Str(nSalarioNovo)))

    elseif nSalario  > 999 .AND. nSalario < 2001
        nReajuste:= 0.12
        nSalarioNovo:= nSalario + (nSalario*nReajuste)
        QOut("Reajuste de sal rio: ", AllTrim(Str(nSalarioNovo)))

    elseif nSalario  > 2000 .AND. nSalario < 4001
        nReajuste:= 0.08
        nSalarioNovo:= nSalario + (nSalario*nReajuste)
        QOut("Reajuste de sal rio: ", AllTrim(Str(nSalarioNovo))) 
    else
        nReajuste:= 0.05
        nSalarioNovo:= nSalario + (nSalario*nReajuste)
        QOut("Reajuste de sal rio: ", AllTrim(Str(nSalarioNovo)))
    end if 
Return NIL