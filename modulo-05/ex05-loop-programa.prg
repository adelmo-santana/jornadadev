Function Main()

    Local cNome, cMateria, nNota1, nNota2, nMedia, cVerifica
    
    hb_cdpSelect("PT850")

    QOut("Valida��o de Aluno.")
    QOut("Digite o nome do aluno, a m�teria (ex.: MAT, POR) e as duas notas.")


    // o primeiro while garante a validação de pelo menos 1 aluno, ao final do segundo while, ele perguntara se mais um aluno devera ser cadastrado
    while .T.
        while .T.
            ACCEPT "Primeiramente, digite o nome: " to cNome
            ACCEPT "Mat�ria: " to cMateria
            ACCEPT "Primeira nota: " to nNota1
            ACCEPT "Segunda nota: " to nNota2
            nNota1:= val(nNota1)
            nNota2:= val(nNota2)
        
            if Len(Trim(cNome)) > 0 .AND. Len(cMateria) == 3 .AND. cMateria == Upper(cMateria)
                if nNota1 >=0 .AND. nNota1 <=10 .AND. nNota2 >=0 .AND. nNota2 <=10
                    nMedia:= (nNota1+nNota2)/2
                    QOut("Nome: ", cNome)
                    QOut("Mat�ria: ", cMateria)
                    QOut("M�dia: ", nMedia)  
                else    
                    QOut("Nome, Mat�ria ou notas inv�lidas")  
                    exit
                end if
            else
                QOut("Nome, Mat�ria ou notas inv�lidas")
                exit
            end if
            exit
        end do
        ACCEPT "Deseja calcular outro? (S/N) " to cVerifica
        if upper(cVerifica) = "N"
            exit
        end if    
    end do  
Return NIL