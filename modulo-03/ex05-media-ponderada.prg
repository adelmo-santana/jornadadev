Functio Main()

    LOCAL nNota1
    LOCAL nNota2
    LOCAL nNota3
    LOCAL nNota4
    LOCAL nMedia

    hb_cdpSelect("PT850")

    ACCEPT "Informe a primeira nota: " to nNota1
    ACCEPT "Informe a primeira nota: " to nNota2
    ACCEPT "Informe a primeira nota: " to nNota3
    ACCEPT "Informe a primeira nota: " to nNota4

    nNota1:= Val(nNota1)
    nNota2:= Val(nNota2)
    nNota3:= Val(nNota3)
    nNota4:= Val(nNota4)

    nMedia:= ((nNota1*1 + nNota2*2 + nNota3*3 + nNota4*4)/(1+2+3+4))
    QOut("A m‚dia das notas ‚: ", AllTrim(Str(nMedia, 10, 2)))


Return NIL