SET PROCEDURE TO matematica.prg

function main()
    Local nNumero:= FatorialN(5)
    Local nPrimo:= EhPrimo(11)
    Local nMinimo:= MMC(6, 4)
    Local nMaximo:= MDC(10, 45)
    QOut(nNumero, nPrimo, nMinimo, nMaximo) 
return NIL