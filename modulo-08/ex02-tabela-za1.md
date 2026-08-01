# SX2
**Tabela já criada com as seguintes funções:**
| Campo | Valor |
|--------|--------|
| Prefixo | ZA1 |
| Nome | ZA1990 |
| Descrição | Cadastro de Pets |
| Path | \DATA\ |
| Modo de Acesso | Compartilhado |  

![SX2](./evidencias/ex02tabelaZA1pet.png)

# SX3
**Completando a tabela com novos campos:** 
| Campo | Tipo | Tamanho | Descrição |
|--------|------|----------|-----------|
| ZA1_COD | Caracter | 6 | Código do Pet |
| ZA1_NOME | Caracter | 40 | Nome do Pet |
| ZA1_CLIENT | Caracter | 6 | Código do Cliente |
| ZA1_LOJA | Caracter | 2 | Loja do Cliente |
| ZA1_DATANA | Data | 8 | Data de Nascimento |
| ZA1_RACA | Caracter | 30 | Raça do Pet |
| ZA1_NOMCLI | Virtual | 40 | Nome do Cliente |


## NCLUSÂO DOS CAMPOS
### **ZA1_COD**
![ZA1_COD](./evidencias/ex02-tabela-za1COD.png)
### **ZA1_NOME**
![ZA1_NOME](./evidencias/ex02-tabela-za1NOME.png)
### **ZA1_CLIENT**
![ZA1_CLIENT](./evidencias/ex02-tabela-za1CLIENT.png)
### **ZA1_LOJA**
![ZA1_LOJA](./evidencias/ex02-tabela-za1LOJA.png)
### **ZA1_DATANA**
![ZA1_DATANA](./evidencias/ex02-tabela-za1DATANA.png)
### **ZA1_RACA**
![ZA1_RACA](./evidencias/ex02-tabela-za1RACA.png)
### **ZA1_NOMCLI**
![ZA1_NOMCLI](./evidencias/ex02-tabela-za1NOMCLI.png)
### Campos Completos
![SX3](./evidencias/ex02camposZA1.png)

### Relação do campo ZA1_NOMCLI (campo virtual)

```advpl
POSICIONE("SA1",1,xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA,"A1_NOME")
```
![](./evidencias/ex02campoNOMCLI.png)

# Criação dos índices para a tabela

**ÍNDICE 1: ZA1_FILIAL + ZA1_COD** 
  
![ind1](./evidencias/ex02-tabela-za1Indice1.png)

**ÍNDICE 2: ZA1_FILIAL + ZA1_CLIENT + ZA1_LOJA**  

![ind2](./evidencias/ex02-tabela-za1Indice2.png)

## Índices criados:
![inds](./evidencias/ex02indices.png)