function main()
    local aArray:= Array(10)
    local nPreencher, nI:= 1
    local nSoma, nMedia, nArmaSoma:= 0

    QOut("Preencha o Array: ")
    for nI:=1 to Len(aArray)
        ACCEPT "Digite o valor para preencher o array: " to nPreencher
        aArray[nI]:= val(nPreencher)
    next
    
    ASort(aArray)
    QOut("Array ordenado: ")
    for nI:=1 to len(aArray)
        QOut(aArray[nI]) 
    next

    QOut("Soma e média dos valores do array")
    for nI:=1 to len(aArray)
        nArmaSoma+= aArray[nI]
    next
    nMedia:= (nArmaSoma/len(aArray))
    QOut(nArmaSoma, nMedia)

    QOut("Maior e Menor no array:", str(aArray[1]),", ", str(aArray[len(aArray)]))
return nil