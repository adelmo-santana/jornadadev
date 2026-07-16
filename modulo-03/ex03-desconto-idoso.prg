Function Main()
    
    LOCAL nNomeCliente
    LOCAL dDataNasci, cData
    LOCAL nPreco
    LOCAL nIdade 

    set date format "dd/mm/yyyy"

    ACCEPT "Informe o nome do cliente: " to nNomeCliente
    ACCEPT "Informe a data de nascimento (ex. 10/04/2001): " to cData
    ACCEPT "Informe o pre‡o do produto (ex. 80.50): " to nPreco

    nPreco:= Val(nPreco)
    dDataNasci:= CToD(cData)
    nIdade:= Int((Date() - dDataNasci)/365)

    hb_cdpSelect("PT850")

    QOut("Nome: ", AllTrim(nNomeCliente))
    QOut("Idade: ", AllTrim(Str(nIdade)))
   
    if (nIdade > 60)
        nPreco:= nPreco*0.875
        QOut("Idade acima de 60, aplicando 12,5% :", AllTrim(Str(nPreco, 10, 2)))
    else
        QOut("Pre‡o do Produto: ", AllTrim(Str(nPreco)))
    end if
Return NIL
