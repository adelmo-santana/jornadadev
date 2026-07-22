function main()
    local nNumeroAluno:= 0
    local nI:= 1, nN:= 1
    local cNomeAluno
    local nNota
    local aListaAluno:= {}
    local aAlunoAtual := {} 
    local oAluno           
    local nMedia:= 0, nSoma:= 0
    local cStatus

    ACCEPT "Digite o número de alunos a registrar: " to nNumeroAluno
    
    for nI:= 1 to val(nNumeroAluno)
        ACCEPT "NOME: " to cNomeAluno
        

        aAlunoAtual := { cNomeAluno }
        
        QOut("Digite as 4 notas: ")
        for nN:= 1 to 4
            ACCEPT "Nota: " to nNota

            AADD(aAlunoAtual, val(nNota))
            QOut("")
        next 
        
  
        AADD(aListaAluno, aAlunoAtual)
    next

    QOut("")
    QOut("Lista final dos alunos e médias: ")

    for each oAluno in aListaAluno
 
        nSoma := oAluno[2] + oAluno[3] + oAluno[4] + oAluno[5]
        nMedia := nSoma / 4
        
        if nMedia >= 7
            cStatus:= "Aprovado"
        else
            cStatus:= "Reprovado"
        end if

        QOut("Aluno: ", oAluno[1], " | Média: ", ltrim(str(nMedia)), " | Status: ", cStatus)
    next 
return nil