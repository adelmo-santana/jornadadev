function main()
    local cNomeProduto
    local nPrecoProduto
    local aCarrinho:= {}, oAtualCarrinho:= {}
    local nPrecoTotal:= 0
    local cEscolha
    local oItem


    QOut("Mini-Carrinho!")

    while .T. 
        ACCEPT "Digite o nome do produto: " to cNomeProduto
        ACCEPT "Digite o preço do produto: " to nPrecoProduto
        oAtualCarrinho := {cNomeProduto, val(nPrecoProduto)}

        AADD(aCarrinho, oAtualCarrinho)
        QOut("Produto adicionado.")

        ACCEPT "Deseja adicionar mais itens? (S/N): " to cEscolha
        if upper(cEscolha) != "S"
            exit
        endif
    end do

    QOut("Final do carrinho!")
    QOut("Resultado: ")

        for each oItem in aCarrinho
        QOut("Item: ", oItem[1], " -  ", oItem[2])
        nPrecoTotal+= oItem[2]
    next

    QOut("TOtal da compra: ", nPrecoTotal)
    
return nil