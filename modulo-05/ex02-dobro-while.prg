Function Main()

    Local cInput, nInput

    QOut("Digite um número e veja seu dobro! ")
    QOut("Numero: ")
    ACCEPT to cInput
    nInput:= Val(cInput)

    // enquanto o valor de entrada for maior que zero, ele executa
    while nInput > 0

        QOut("Dobro: ", alltrim(str(nInput*2)))
        QOut("Número: ")
        ACCEPT to cInput
        nInput:= Val(cInput)

    end do

    QOut("Erro: zero ou Negativo.")
   
Return NIL