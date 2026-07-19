Function MainI()

    
    Local nI:= 0

    hb_cdpSelect("PT850")

    //imprimindo n£meros de 1 a 100

    QOut("N£meros de 1 a 100: ")
    QOut()
    for nI:=1 to 100 
        QOut("N£meros: ", nI)
        hb_idleSleep(0.01) // controla o tempo de execuá∆o de cada loop para n∆o comer os n£meros da sequància
    next

    //imprimindo n£meros de -50 a 50

    QOut("N£meros de -50 a 50: ")
    QOut()
    for nI:= -50 to 50
        QOut("N£meros: ", nI)
        hb_idleSleep(0.01)
    next

    //imprimindo n£meros de 80 a 5

    QOut("N£meros de 80 a 5: ")
    QOut()
    for nI:= 80 to 5 step -1
        QOut("N£meros: ", nI)
        hb_idleSleep(0.01)
    next

Return NIL