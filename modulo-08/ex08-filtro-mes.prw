#include "protheus.ch"

USER FUNCTION STTIP002()
    LOCAL aColors := {;
        {"ZA1->ZA1_DATANA < dDataBase - 3650", "BR_VERMELHO"},;
        {"ZA1->ZA1_DATANA == dDataBase",       "BR_AMARELO"},;
        {".T.",                                "BR_VERDE"};
    }
    
    PRIVATE cCadastro := "Pets"
    PRIVATE lLoop     := .T. // variavel para o loop 
    PRIVATE aRotina   := {;
        {"Pesquisar",  "AxPesqui",   0, 1},;
        {"Visualizar", "AxVisual",   0, 2},;
        {"Incluir",    "AxInclui",   0, 3},;
        {"Alterar",    "AxAltera",   0, 4},;
        {"Excluir",    "AxDeleta",   0, 5},;
        {"Limpar Filtro","U_LIMPFILT", 0, 6},; 
        {"Histórico",  "U_HISTPET",  0, 6};  
    }
    
    dbSelectArea("ZA1")
    dbSetOrder(1)   
    
    //aplicando o filtro 
    SET FILTER TO Month(ZA1->ZA1_DATANA) == Month(dDataBase) .AND. Year(ZA1->ZA1_DATANA) == Year(dDataBase)
    
    // loop com o filtro 
    While lLoop
        mBrowse(1, 1, 22, 75, "ZA1", , , , , , aColors)
    EndDo
    
RETURN NIL

// função para o botão limpar filtro
USER FUNCTION LIMPFILT()
    SET FILTER TO
    lLoop := .F.  
    
  
    IF Type("oBrowse") == "O"
        oBrowse:End()
    ENDIF
RETURN NIL

// função para o botão historico 
USER FUNCTION HISTPET()
    LOCAL cInformacoes := ""
    
    IF !EOF()
        cInformacoes += "Código do Pet: "   + ZA1->ZA1_COD + Chr(13) + Chr(10)
        cInformacoes += "Raça do Animal: "  + AllTrim(ZA1->ZA1_RACA) + Chr(13) + Chr(10)
        cInformacoes += "Nome Registrado: " + AllTrim(ZA1->ZA1_NOME)
        
        MsgInfo(cInformacoes, "Histórico do Pet Selecionado")
    ELSE
        MsgAlert("Nenhum registro posicionado na listagem!", "Atenção")
    ENDIF
RETURN NIL