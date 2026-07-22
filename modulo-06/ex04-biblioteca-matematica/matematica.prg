Function FatorialN(nN)
    local nfato:= 1
    local nI:= 1

    if nfato < 0
        return 0
    end if

    for nI:= 1 to nN
        nfato*= nI
    next

Return nfato 

function EhPrimo(nN)
    Local nI:= 2

    if nN = 1
        return .F.
    end if 

    for nI:= 2 to Sqrt(nN)
        if nN % nI == 0
            return .F.
            exit 
        end if
    next 

return .T.

function MMC(nA, nB)
    local nMMC:= 0

    if nA > 0 .AND. nB > 0
        nMMC:= (nA * nB) / MDC(nA, nB)
    end if

return nMMC

function MDC(nA, nB)
    local nAux := 0

    while nB != 0
        nAux := nB
        nB := nA % nB
        nA := nAux
    end do
return nA