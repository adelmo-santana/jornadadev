Function Main()

    Local nNumero1:= 0
    Local nNumero2:= 0

    hb_cdpSelect("PT850")
    QOut("Qual n£mero ‚ maior?")
    ACCEPT "Digite o primeiro n£mero: " to nNumero1
    ACCEPT "Digite o segundo n£mero: " to nNumero2

    nNumero1:= Val(nNumero1)
    nNumero2:= Val(nNumero2)

    if nNumero1 = nNumero2 
        QOut("Os dois n£meros sÆo iguais.")
    elseif nNumero1 > nNumero2
        QOut(AllTrim(Str(nNumero1)), " ‚ maior que", AllTrim(Str(nNumero2)))
    else
        QOut(AllTrim(Str(nNumero2)), " ‚ maior que", AllTrim(Str(nNumero1)))  
    end if

Return NIL    