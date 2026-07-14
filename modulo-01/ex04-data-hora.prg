function MAIN()

    Local cNome:= "Adelmo"
    Local cCidade:= "Guarulhos"
    Local cCurso:= "Harbour/ADVPL"

    hb_cdpSelect("PT850") // formata‡Æo de texto
    set date format "dd/mm/yyyy" // formata‡Æo de data

    QOut("=======================")
    QOut(" Ficha de Apresenta‡Æo")
    QOut("=======================")
    QOut("Nome    : " + cNome)
    QOut("Cidade  : " + cCidade)
    QOut("Curso   : " + cCurso)
    QOut("Data :" +  DToC(Date())) // fun‡Æo que mostra a data
    QOut("Hora :" + Time()) // fun‡Æo que mostra a hora
    QOut("=======================")
Return NIL