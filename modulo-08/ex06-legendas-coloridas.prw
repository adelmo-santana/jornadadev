#include "protheus.ch"

USER FUNCTION STTIP002()
		LOCAL aColors := {;
		{"ZA1->ZA1_DATANA < dDataBase - 3650", "BR_VERMELHO"},;        // 3650 > 10 anos e não 30 dias como no outro
		{"ZA1->ZA1_DATANA == dDataBase", "BR_AMARELO"},;
		{".T.", 																"BR_VERDE"};
		}
		PRIVATE cCadastro := "Pets"
		PRIVATE aRotina := {;
  		{"Pesquisar", "AxPesqui", 0, 1},;
  		{"Visualizar","AxVisual", 0, 2},;
  		{"Incluir", "AxInclui", 0, 3},;
		{"Alterar", "AxAltera", 0, 4},;
		{"Excluir", "AxDeleta", 0, 5};
		}
		
		dbSelectArea("ZA1")
		dbSetOrder(1)   
		mBrowse(1, 1, 22, 75, "ZA1", , , , , , aColors)
RETURN NIL