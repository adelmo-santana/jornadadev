Function Main()
    Local nNumero1:= 0
    Local nNumero2:= 0
    Local cOperador

    hb_cdpSelect("PT850")

    QOut("Caluladora!")
    ACCEPT "Digite o primeiro n£mero: " to nNumero1
    ACCEPT "Digite o segundo n£mero: " to nNumero2
    ACCEPT "Digite o s°mbolo da operaá∆o desejada (+ Adiá∆o; - Subitraá∆o; * Multiplicaá∆o; / Divis∆o; ^ Potànciaá∆o; R Raiz Quadrada.): " to cOperador

    nNumero1:= val(nNumero1)
    nNumero2:= val(nNumero2)
    cOperador:= Upper(cOperador)


    if nNumero2 = 0 
        QOut("N£meros inv†lidos, operaá∆o inv†lida ou divis∆o por zero.") 
    else     
        do case
            case cOperador = "+"
                QOut("Resultado:  ", AllTrim(Str(nNumero1 + nNumero2)))

            case cOperador = "-"
                QOut("Resultado:  ", AllTrim(Str(nNumero1 - nNumero2)))
        
            case cOperador = "*"
                QOut("Resultado: ", AllTrim(Str(nNumero1 * nNumero2)))
            
            case cOperador = "/"
                Qout("Resultado: ", AllTrim(Str(nNumero1/nNumero2)))
        
            case cOperador = "^"
                Qout("Resultado: ", AllTrim(Str(nNumero1^nNumero2)))

            case cOperador = "R"
                Qout("Raizes:", AllTrim(Str(Sqrt(nNumero1))), "e", AllTrim(Str(Sqrt(nNumero2))))
        
                OTHERWISE
                QOut("N£meros inv†lidos, operaá∆o inv†lida ou divis∆o por zero.")    
        endcase
    end if
Return NIL    