// ============================================
// STTIP003.PRW
// Cadastro de Contatos (mBrowse)
// ============================================
#include "protheus.ch"
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
	{"Interações", "U_STTIP004", 0, 6}; // ? abre a SZ2 filtrada!
	}
// Legenda por idade do contato:
// Verde: recente (até 7 dias)
// Amarelo: antigo (8 a 30 dias)
// Vermelho: muito antigo (> 30 dias)
	aColors := {;
	{"SZ1->Z1_DATA >= dDataBase - 7", "BR_VERDE"},;
	{"SZ1->Z1_DATA >= dDataBase - 30", "BR_AMARELO"},;
	{".T.", "BR_VERMELHO"};
	}
	dbSelectArea("SZ1")
	dbSetOrder(1)
	dbSeek(xFilial("SZ1"))
	mBrowse(1, 1, 22, 75, "SZ1", , , , , , aColors, , , , , .F., , , cFiltro)
RETURN NIL