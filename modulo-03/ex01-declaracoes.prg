Function Main()
    
    LOCAL cNomeFunc:= "Douglas Ferreira" 
    LOCAL nSalBruto:= 2500
    LOCAL lAtivo:= .T.
    LOCAL dDatAdmissao:= Date()
    LOCAL nCodDept:= 785411

    hb_cdpSelect("PT850")


    QOut("Nome: ", AllTrim(cNomeFunc), ", Sal†rio: ", AllTrim(str(nSalBruto)))
    QQOut(", Data de Admiss∆o: ", DToC(dDatAdmissao), ", C¢digo do Departamento: ", AllTrim(Str(nCodDept)))
    if lAtivo
        QOut("Est† Ativo")
    else 
        QOut("N∆o Ativo")    
    endif
Return NIL