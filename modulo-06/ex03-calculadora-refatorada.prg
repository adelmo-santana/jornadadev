Function Main()
    Local nNumeros
    Local nResult

    nNumeros:= LerNumero()
    nResult  := Calcular(nNumeros)
    MostraResultado(nResult)

Return NIL

Function LerNumero()

    Local n1, n2
    ACCEPT "Digite o primeiro número: " to n1
    ACCEPT "Digite o segundo número: " to n2
    n1:= val(n1)
    n2:= val(n2)
Return {n1, n2}

Function Calcular(nNumer)
    Local nResul, cOperador
    ACCEPT "Digite o perador da conta (+, -, *, /, ^, ou R(raiz)): " to cOperador
    cOperador:= Upper(cOperador)

    do case
        case cOperador = "+"
            nResul := nNumer[1] + nNumer[2]
        case cOperador = "-"
            nResul := nNumer[1] - nNumer[2]
        case cOperador = "*"
            nResul := nNumer[1] * nNumer[2]
        case cOperador = "/"
            if nNumer[2] == 0
                nResul := "Divisão por zero"
            else
                nResul := nNumer[1] / nNumer[2]
            endif
        case cOperador = "^"
            nResul := nNumer[1] ^ nNumer[2]
        case cOperador = "R"
            nResul := Sqrt(nNumer[1] + nNumer[2])
        otherwise
            nResul := "Operador Inválido"
    endcase
Return nResul

Function MostraResultado(nResult)
    QOut("Resultado", nResult)
Return NIL