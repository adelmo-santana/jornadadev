#include "protheus.ch"
// -----------------------------------------------
// NomeCliente
// Retorna o nome do cliente a partir do código/loja
// -----------------------------------------------
STATIC FUNCTION NomeCliente(cCodigo, cLoja)
	LOCAL cFilial := xFilial("SA1")
	LOCAL cNome
	IF Empty(cCodigo)
	RETURN ""
	ENDIF
	cNome := POSICIONE("SA1", 1, cFilial + cCodigo + cLoja, "A1_NOME")
RETURN AllTrim(cNome)
// -----------------------------------------------
// ProxCodigoSZ1
// Retorna o próximo código disponível para SZ1
// -----------------------------------------------
STATIC FUNCTION ProxCodigoSZ1()
RETURN GetSXENum("SZ1", "Z1_CODIGO")
// -----------------------------------------------
// ProxSequenSZ2
// Retorna a próxima sequência para um contato na SZ2
// -----------------------------------------------
STATIC FUNCTION ProxSequenSZ2(cContat)
	LOCAL nMax := 0
	dbSelectArea("SZ2")
	dbSetOrder(1)
	dbSeek(xFilial("SZ2") + cContat)
	WHILE !Eof() .AND. SZ2->Z2_FILIAL == xFilial("SZ2") .AND. SZ2->Z2_CONTAT == cContat
		nMax := Max(nMax, Val(SZ2->Z2_SEQUEN))
		dbSkip()
	ENDDO
RETURN StrZero(nMax + 1, 3)
// -----------------------------------------------
// DescTipoInteracao
// Retorna a descrição do tipo de interação
// -----------------------------------------------

STATIC FUNCTION DescTipoInteracao(cTipo)
	LOCAL cDesc := ""
	DO CASE
		CASE cTipo == "E" ; cDesc := "E-mail"
		CASE cTipo == "L" ; cDesc := "Ligação"
		CASE cTipo == "R" ; cDesc := "Reunião"
		CASE cTipo == "V" ; cDesc := "Visita"
		CASE cTipo == "W" ; cDesc := "WhatsApp"
	ENDCASE
RETURN cDesc