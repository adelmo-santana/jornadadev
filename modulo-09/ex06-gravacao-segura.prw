#include "protheus.ch"

// ============================================
// STTIP003.PRW - Cadastro de Contatos
// ============================================
USER FUNCTION STTIP003()
	LOCAL cFiltro := ""
	LOCAL aColors
	PRIVATE cCadastro := "Contatos"
	PRIVATE aRotina := {;
	{"Pesquisar", "AxPesqui", 0, 1},;
	{"Visualizar", "AxVisual", 0, 2},;
	{"Incluir", "AxInclui", 0, 3},;
	{"Alterar", "AxAltera", 0, 4},;
	{"Excluir", "AxDeleta", 0, 5},;
	{"Interações", "U_STTIP004", 0, 6}; 
	}

	aColors := {;
	{"SZ1->Z1_DATA >= dDataBase - 7", "BR_VERDE"},;
	{"SZ1->Z1_DATA >= dDataBase - 30", "BR_AMARELO"},;
	{".T.", "BR_VERMELHO"};
	}
	dbSelectArea("SZ1")
	dbSetOrder(1)
	dbGoTop()
	mBrowse(1, 1, 22, 75, "SZ1", , , , , , aColors, , , , , .F., , , cFiltro)
RETURN NIL     

USER FUNCTION STTIPSALVAR()
	LOCAL lOk := .T.
	LOCAL oErro
	LOCAL bErrorBlock := ErrorBlock({|e| oErro := e, Break(e)})
	
	BeginTran()
	
	BEGIN SEQUENCE
		// Validação de negócio (Se faltar, dá o Break)
		IF Empty(M->Z1_CLIENT)
			MsgAlert("Cliente é obrigatório!", "Atenção")
			lOk := .F.
			Break("Vazio") 
		ENDIF

		IF Empty(M->Z1_ASSUNT)
			MsgAlert("O Assunto do contato é obrigatório!", "Atenção")
			lOk := .F.
			Break("Vazio") 
		ENDIF
        
	RECOVER USING oErro
		lOk := .F.
		RollBackTran()
		
		IF ValType(oErro) == "O"
			MsgStop("Erro na validação: " + oErro:Description, "Erro")
			U_GRAVARLOG("STTIPSALVAR", oErro)
		ENDIF
	END SEQUENCE 
	
	ErrorBlock(bErrorBlock) 
	
	IF lOk
		CommitTran()
	ENDIF
    
RETURN lOk

USER FUNCTION GRAVARLOG(cFuncao, oErro)
	LOCAL cArqLog  := "sttiplib_error.log"
	LOCAL nHandle
	LOCAL cMensagem := ""
	
	// mostra data e a hora do erro 
	cMensagem += "[" + DtoC(dDataBase) + " - " + Time() + "] "
	cMensagem += "Erro na Função: " + cFuncao + " -> "
	cMensagem += oErro:Description + " | Linha: " + AllTrim(Str(oErro:SubLine)) + CRLF

	// verifica se o arquivo de log já existe no diretório
	IF !File(cArqLog)
		nHandle := FCreate(cArqLog)
	ELSE
		// abrir o arquivo já existente
		nHandle := FOpen(cArqLog, 2)
	ENDIF
	
	// se for aberto ou criado com sucesso 
	IF nHandle >= 0
		FSeek(nHandle, 0, 2)
		FWrite(nHandle, cMensagem)
		FClose(nHandle)
	ENDIF
RETURN NIL