#include "protheus.ch"

USER FUNCTION STTIP001()
	PRIVATE cCadastro := "Pets"
	dbSelectArea("ZA1")
	dbSetOrder(1)
 //	AxCadastro("ZA1", "Pets", , "1", , , , .F.) está dando erros por conta dos parametros
 		AxCadastro("ZA1", "Pets")
RETURN NIL