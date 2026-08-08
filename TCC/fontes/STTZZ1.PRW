#include "protheus.ch"

USER FUNCTION STTZZ1()

    LOCAL aColors  := {;
        {"ZZ1_VALCER < dDataBase"            , "BR_VERMELHO"},;
        {"U_CertificadoVencendo(ZZ1_VALCER)" , "BR_AMARELO" },;
        {"ZZ1_VALCER > dDataBase + 30"       , "BR_VERDE"   };
    }
    PRIVATE cAlias     := "ZZ1"
    PRIVATE cCadastro  := "Controle de Fornecimento ISO 9001" 
    PRIVATE aRotina    := {}


    AAdd(aRotina, {"Pesquisar"  , "AxPesqui"                              , 0, 1})
    AAdd(aRotina, {"Visualizar" , "AxVisual(cAlias, ZZ1->(RecNo()), 2)"   , 0, 2})
    AAdd(aRotina, {"Incluir"    , "AxInclui(cAlias, ZZ1->(RecNo()), 3)"   , 0, 3})
    AAdd(aRotina, {"Alterar"    , "AxAltera(cAlias, ZZ1->(RecNo()), 4)"   , 0, 4})
    AAdd(aRotina, {"Excluir"    , "U_ExcZZ1"                              , 0, 5}) 
    AAdd(aRotina, {"Ocorrências", "U_CallZZ2"                             , 0, 4}) 

    dbSelectArea(cAlias)
    dbSetOrder(1) 

    mBrowse(1, 1, 22, 75, cAlias, , , , , , aColors)
RETURN NIL

USER FUNCTION CallZZ2()
    LOCAL cCodigoZZ1 := ZZ1->ZZ1_CODIGO
    U_STTZZ2FLT(cCodigoZZ1)
RETURN NIL

USER FUNCTION ExcZZ1()
    LOCAL lRet := .T.
    LOCAL oErro
    BEGIN SEQUENCE
        dbSelectArea("ZZ2")
        dbSetOrder(1) 
        IF dbSeek(xFilial("ZZ2") + ZZ1->ZZ1_CODIGO)
            MsgAlert("Este controle possui ocorrências cadastradas em zz2.", "ATENÇÃO")
            lRet := .F.
        ELSE
            AxDeleta("ZZ1")
        ENDIF
    RECOVER USING oErro
        U_GravarLogTCC("ExcZZ1", oErro)
        MsgStop("Erro tecnico.", "AVISO")
        lRet := .F.
    END SEQUENCE
    dbSelectArea("ZZ1")
RETURN lRet