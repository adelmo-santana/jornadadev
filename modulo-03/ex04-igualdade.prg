Function Main()
    hb_cdpSelect("PT850")

    QOut("Harbour" = "Harbo") // faz uma comparaá∆o parcial, verifica se "Harbour" comeáa com os mesmo caracteres que "Harbo", .T. no caso
    QOut("Harbour" == "Harb") // faz uma comparaá∆o exata, verficando se os dois conte£dos s∆o exatamente iguais

    QOut("Harbo" = "Harbour") // .F., est† verificando se "Harbo" comeáa com os mesmo caracteres que "Harbour", pois ele sempre usa o 
    // comprimento da string da direita para decidir quantos caracteres vai comparar com o da esquerda

Return NIL