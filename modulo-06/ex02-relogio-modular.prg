Function Main()

    Local cHoras
    Local cHoraFormatada
    Local nI:= 0

    for nI:= 1 to 30 
        cHoras:= ObterHora()
        cHoraFormatada:= FormatarHora(cHoras)
        ExibirHora(cHoraFormatada)
        hb_idleSleep(1.0)
    next 

Return NIL

Function ObterHora()
    Local cHoras:= hb_DateTime()
Return cHoras

Function FormatarHora(cHoras)
    
Return SubStr(hb_TToC(cHoras, "HH:MM:SS"), 10, 8)

Function ExibirHora(cHoras)
    QOut(cHoras)
Return NIL