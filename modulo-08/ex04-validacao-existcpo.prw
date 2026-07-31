#include "protheus.ch"
USER FUNCTION STTIP001()
	PRIVATE cCadastro := "Pets"
	dbSelectArea("ZA1")
	dbSetOrder(1)
 //	AxCadastro("ZA1", "Pets", , "1", , , , .F.)  dando erros por conta dos parametros
 		AxCadastro("ZA1", "Pets")    
 		
 		// X3_VALID = "U_VALCLI001()"
	USER FUNCTION VALCLI001()
		IF !ExistCpo("SA1", xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA, 1)
			MsgAlert("Cliente não cadastrado na SA1!", "Atenção")
			RETURN .F.
		ENDIF
	RETURN .T.
RETURN NIL