#include "protheus.ch"

//NomeFornecedor
//Busca o nome do fornecedor na tabela SA2
//
USER FUNCTION NomeFornecedor(cFornec, cLoja)
RETURN Posicione("SA2", 1, xFilial("SA2") + cFornec + cLoja, "A2_NOME")

//NomeProduto
//Busca a descrição do produto na tabela SB1
//
USER FUNCTION NomeProduto(cCodPro)
RETURN Posicione("SB1", 1, xFilial("SB1") + cCodPro, "B1_DESC")

//PercNaoConforme
//Calcula a porcentagem de itens não conformes
//
USER FUNCTION PercNaoConforme(nOk, nNok)
    LOCAL nTotal := nOk + nNok
    IF nTotal == 0
        RETURN 0
    ENDIF
RETURN (nNok / nTotal) * 100

// CertificadoVencendo
//Retorna se o certificado vence em até 30 dias
//
USER FUNCTION CertificadoVencendo(dValCer)
RETURN (dValCer <= dDataBase + 30 .AND. dValCer >= dDataBase)
          
// classe poo para gravar logs
CLASS TccLogger
    METHOD New() CONSTRUCTOR
    METHOD Salvar(cFuncao, oErro)
ENDCLASS

METHOD New() CLASS TccLogger
RETURN Self

METHOD Salvar(cFuncao, oErro) CLASS TccLogger
    LOCAL cLog := "Erro na funcao: " + cFuncao + " - Motivo: " + oErro:Description
    MemoWrite("\logs\tcc_errors.log", cLog)
RETURN NIL

USER FUNCTION GravarLogTCC(cFuncao, oErro)
    LOCAL oLogger := TccLogger():New() 
RETURN oLogger:Salvar(cFuncao, oErro)         

USER FUNCTION GetNomeFor()

			LOCAL cFornec := If(Type("M->ZZ1_FORNEC") == "C", M->ZZ1_FORNEC, ZZ1->ZZ1_FORNEC)
			LOCAL cLoja   := If(Type("M->ZZ1_LOJAFO") == "C", M->ZZ1_LOJAFO, ZZ1->ZZ1_LOJAFO)

RETURN Posicione("SA2", 1, xFilial("SA2") + cFornec + cLoja, "A2_NOME")       

USER FUNCTION BrowseNomeFor()
    LOCAL cFornec := If(Type("M->ZZ2_FORNEC") == "C", M->ZZ2_FORNEC, ZZ2->ZZ2_FORNEC)
    LOCAL cLoja   := If(Type("M->ZZ2_LOJAFO") == "C", M->ZZ2_LOJAFO, ZZ2->ZZ2_LOJAFO)
RETURN Posicione("SA2", 1, xFilial("SA2") + cFornec + cLoja, "A2_NOME")      

USER FUNCTION BrowseNomeFor()  

    LOCAL cFornec := If(Type("M->ZZ2_FORNEC") == "C", M->ZZ2_FORNEC, ZZ2->ZZ2_FORNEC)
    LOCAL cLoja   := If(Type("M->ZZ2_LOJAFO") == "C", M->ZZ2_LOJAFO, ZZ2->ZZ2_LOJAFO)     
    
RETURN Posicione("SA2", 1, xFilial("SA2") + cFornec + cLoja, "A2_NOME")   


USER FUNCTION CalcTotOk()
    LOCAL nQtd := If(Type("M->ZZ2_QTDOK") == "N", M->ZZ2_QTDOK, ZZ2->ZZ2_QTDOK)
    LOCAL nVlr := If(Type("M->ZZ2_VLRUNI") == "N", M->ZZ2_VLRUNI, ZZ2->ZZ2_VLRUNI)
RETURN (nQtd * nVlr)


USER FUNCTION CalcTotNok()
    LOCAL nQtd := If(Type("M->ZZ2_QTDNOK") == "N", M->ZZ2_QTDNOK, ZZ2->ZZ2_QTDNOK)
    LOCAL nVlr := If(Type("M->ZZ2_VLRUNI") == "N", M->ZZ2_VLRUNI, ZZ2->ZZ2_VLRUNI)
RETURN (nQtd * nVlr)   
