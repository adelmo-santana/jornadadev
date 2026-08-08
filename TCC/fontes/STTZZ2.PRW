#include "protheus.ch" 

USER FUNCTION STTZZ2()
    PRIVATE cAlias := "ZZ2"
    U_MontaBrowseZZ2(cAlias, .F., "")
RETURN NIL

USER FUNCTION STTZZ2FLT(cCodigoZZ1)
    PRIVATE cAlias := "ZZ2"
    U_MontaBrowseZZ2(cAlias, .T., cCodigoZZ1)
RETURN NIL

USER FUNCTION MontaBrowseZZ2(cAlias, lFiltrado, cCodigoZZ1)
    // CORREÇÃO: Agrupamento correto das variáveis locais e privadas
    LOCAL cFilter    := ""
    LOCAL aIndexZZ2  := {}
    LOCAL aColors    := {;
        {"U_PercNaoConforme(ZZ2_QTDOK, ZZ2_QTDNOK) > Posicione('ZZ1', 1, xFilial('ZZ1')+ZZ2_CONFOR, 'ZZ1_TOLERA')", "BR_VERMELHO"},;
        {"U_PercNaoConforme(ZZ2_QTDOK, ZZ2_QTDNOK) <= Posicione('ZZ1', 1, xFilial('ZZ1')+ZZ2_CONFOR, 'ZZ1_TOLERA')", "BR_VERDE"};
    }
    PRIVATE cCadastro := "Ocorrências de Fornecedores ISO 9001" // CORREÇÃO: Escudo contra erro cCadastro
    PRIVATE aRotina   := {}
    
    AAdd(aRotina, {"Pesquisar" , "AxPesqui", 0, 1})
    AAdd(aRotina, {"Visualizar", "AxVisual(cAlias, ZZ2->(RecNo()), 2)", 0, 2})
    AAdd(aRotina, {"Incluir"   , "AxInclui(cAlias, ZZ2->(RecNo()), 3)", 0, 3})
    AAdd(aRotina, {"Alterar"   , "AxAltera(cAlias, ZZ2->(RecNo()), 4)", 0, 4})
    AAdd(aRotina, {"Excluir"   , "AxDeleta", 0, 5})

    dbSelectArea("ZZ2")
    dbSetOrder(1)

    IF lFiltrado
        cFilter := "ZZ2_CONFOR == '" + cCodigoZZ1 + "'"
        FilBrowse("ZZ2", @aIndexZZ2, @cFilter)
        mBrowse(1, 1, 22, 75, cAlias, , , , , , aColors)
        EndFilBrw("ZZ2", aIndexZZ2)
    ELSE
        mBrowse(1, 1, 22, 75, cAlias, , , , , , aColors)
    ENDIF
RETURN NIL
