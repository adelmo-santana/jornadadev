function main()
    
    local aDiasSemana:= {"Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"}
    local nDia

    ACCEPT "Digite um número (1 a 7), para ver o dia da semana: " to nDia
    nDia:= val(nDia)

    if nDia < 1 .OR. nDia > 7 
        QOut("Número inválido")
    else 
        QOut("Dia: ", aDiasSemana[nDia])
    endif

return nil