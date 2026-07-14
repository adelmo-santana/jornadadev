function MAIN()

    Local cNome:= "Adelmo"
    Local cCidade:= "Guarulhos"
    Local cCurso:= "Harbour/ADVPL"

    hb_cdpSelect("PT850") // formata‡Æo de texto

    QOut("=======================")
    QOut(" Ficha de Apresenta‡Æo")
    QOut("=======================")
    QOut("Nome    : " + cNome)
    QOut("Cidade  : " + cCidade)
    QOut("Curso   : " + cCurso)
    QOut("Data :" +  hb_ntos(Day(Date())),"/",CMonth(Date()),"/",Year(Date())) // fun‡Æo date(), separados em dia, mˆs e ano
    QOut("Hora :" + Time()) // fun‡Æo que mostra o tempo
    QOut("=======================")
Return NIL