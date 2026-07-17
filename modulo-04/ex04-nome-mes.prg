Function Main()

    Local nMes:= 0

    set date format "mm/dd/yyyy"
    hb_langSelect("PT")
    hb_cdpSelect("PT850")
    
    ACCEPT "Digite o n£mero de um mˆs para ver seu nome (1 a 12): " to nMes
    nMes:= Val(nMes)

    if nMes < 1 .OR. nMes > 12
        QOut("Mˆs inv lido")
    else     
        QOut(CMonth(CToD(AllTrim(Str(nMes)) + "/01/2000")))
        nMes:= 0
    end if
Return NIL