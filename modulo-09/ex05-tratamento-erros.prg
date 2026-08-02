FUNCTION Main()
    LOCAL nA := 10, nB := 0, nRes
    LOCAL oErro

    BEGIN SEQUENCE
        
        IF nB == 0
            // usando um novo objeto para tratar o erro da divisão por zero
            oErro := ErrorNew()
            oErro:Description := "Tentativa de divisão por zero!"
            BREAK oErro
        ENDIF

        nRes := nA / nB
        QOut("Resultado: " + Str(nRes))

    RECOVER USING oErro
        QOut("Erro capturado: " + oErro:Description)
    END SEQUENCE
    //programa continua mesmo ao capturar a divisão por zero
    QOut("O programa continua de pé!")
RETURN NIL