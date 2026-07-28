# A1_FILIAL e xFilial()

## a. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?
com ele, a tabela se encaixa no padrão de multiempresa do protheus, também serve como uma chave primária para separar registros e  que os dados não se misturem com outras filiais.

## b. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa “escrevesse a filial na mão” em vez de usar xFilial() ?
ela busca o código da filial para o usuário respeitando as regras de compartilhamento, se a filial for feita a mão, os dados podem ser gravados em outras filiais, erros de leitura também podem acontecer.