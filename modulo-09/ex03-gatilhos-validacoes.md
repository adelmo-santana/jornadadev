# Gatilhos, campos virtuais e validações cruzadas

## Relacionar Codigo
**ACESSO AO SIGACFG**: Validar credenciais > Base de dados > Dicionário > Base de dados > Tabela SZ2 > Campo Z2_CODIGO:

Relação:   
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_CODIGO")

![cod](./evidencias/ex03-gatilhos-validacoesRELACAOCOD.png)

Campo Z2_ASSUNT: 

Relação:  
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_ASSUNTO")

![assunt](./evidencias/ex03-gatilhos-validacoesRELACAOASSUNT.png)

## Gatilhos
**ACESSO AO SIGACFG**: Base de Dados > Dicionário > Gatilhos:

1. Gatilhos automáticos na SZ2:
* Z2_DATA → dDataBase (fase 1)  

![gat1](./evidencias/ex03-gatilhos-validacoesGATILHODATA.png)

* Z2_HORA → IF(INCLUI, Time(), SZ2->Z2_HORA) (fase 3)  

![gat2](./evidencias/ex03-gatilhos-validacoesGATILHOHORA.png)

* Z2_USUAR → cNomUsr (fase 1) 

![gat3](./evidencias/ex03-gatilhos-validacoesGATILHOUSUARIO.png)


## Validação
**ACESSO AO SIGACFG**: Validar credenciais > Base de dados > Dicionário > Base de dados > Tabela SZ2 > Campo Z2_CONTAT:

1. Validação cruzada no X3_VALID do Z2_CONTAT :
    * ExistCpo("SZ1", xFilial("SZ1") + M->Z2_CONTAT, 1)

![validacao](./evidencias/ex03-gatilhos-validacoesRELACAOASSUNT.png)