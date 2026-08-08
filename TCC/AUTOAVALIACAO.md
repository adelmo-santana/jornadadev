# CHECKLIST FINAL — TCC Jornada DEV START

---

## 1. Estrutura e arquivos do projeto

* [x] `TCC.PRJ`
* [x] `STTZZ1.PRW`
* [x] `STTZZ2.PRW`
* [x] `STTZZLIB.PRW`
* [x] Pasta `Dados-e-Dicionario/`
* [x] Pasta `evidencias/`
* [x] `README.md`
* [x] `AUTOAVALIACAO.md`
* [x] `converte-dicionario.prg`
* [x] Arquivos `.DBF`
* [x] Arquivos `.CSV`
* [x] `sigacom.xnu`

---

## 2. Tabela ZZ1 — Controle de Fornecimento

### Estrutura

* [x] Tabela `ZZ1` criada no dicionário
* [x] Acesso compartilhado configurado
* [x] Campo `ZZ1_FILIAL`
* [x] Campo `ZZ1_CODIGO`
* [x] Campo `ZZ1_FORNEC`
* [x] Campo `ZZ1_LOJAFO`
* [x] Campo virtual `ZZ1_NOMEFO`
* [x] Campo `ZZ1_CERTIF`
* [x] Campo `ZZ1_VALCER`
* [x] Campo `ZZ1_TOLERA`
* [x] Campo virtual `ZZ1_TOTOK`
* [x] Campo virtual `ZZ1_TOTNOK`

### Índices

* [x] Índice primário: `ZZ1_FILIAL + ZZ1_CODIGO`
* [x] Índice por fornecedor: `ZZ1_FILIAL + ZZ1_FORNEC + ZZ1_LOJAFO`
* [x] Índice por validade: `ZZ1_FILIAL + DTOS(ZZ1_VALCER)`

### Regras e validações

* [x] Fornecedor validado contra a tabela `SA2`
* [x] Validade do certificado validada
* [x] Tolerância validada entre 0 e 100
* [x] Formatação dos campos numéricos configurada no SX3
* [x] `ZZ1_NOMEFO` busca o nome do fornecedor na `SA2`

---

## 3. Tabela ZZ2 — Ocorrências do Fornecedor

### Estrutura

* [x] Tabela `ZZ2` criada
* [x] Relacionamento com a `ZZ1`
* [x] Campo `ZZ2_FILIAL`
* [x] Campo `ZZ2_CONFOR`
* [x] Campo `ZZ2_FORNEC`
* [x] Campo `ZZ2_LOJAFO`
* [x] Campo virtual `ZZ2_NOMEFO`
* [x] Campo `ZZ2_DATA`
* [x] Campo `ZZ2_HORA`
* [x] Campo `ZZ2_CODPRO`
* [x] Campo `ZZ2_QTDOK`
* [x] Campo `ZZ2_QTDNOK`
* [x] Campo `ZZ2_VLRUNI`
* [x] Campo virtual `ZZ2_TOTOK`
* [x] Campo virtual `ZZ2_TOTNOK`

### Índices

* [x] Índice primário por controle + data + hora
* [x] Índice por fornecedor + loja + data
* [x] Índice por data

### Regras e validações

* [x] Controle validado contra a tabela `ZZ1`
* [x] Produto validado contra a tabela `SB1`
* [x] Data futura bloqueada
* [x] Formatação dos campos numéricos configurada no SX3
* [x] `ZZ2_NOMEFO` configurado como campo virtual
* [x] `ZZ2_TOTOK` configurado como campo virtual
* [x] `ZZ2_TOTNOK` configurado como campo virtual

---

## 4. Gatilhos e preenchimentos automáticos — SX7

* [x] Preenchimento do nome do fornecedor na `ZZ1`
* [x] Preenchimento do fornecedor da `ZZ2` a partir do controle da `ZZ1`
* [x] Preenchimento da loja da `ZZ2` a partir do controle da `ZZ1`
* [x] Preenchimento do nome do fornecedor na `ZZ2`
* [x] Preenchimento automático da data da ocorrência
* [x] Preenchimento automático da hora da ocorrência

> **Observação:** no Protheus 8, a data e a hora da ocorrência foram implementadas por meio de **Início Padrão (X3_INICPAD)**, mantendo o comportamento automático esperado.

---

## 5. STTZZ1.PRW — Controle de Fornecimento

* [x] Rotina `STTZZ1()` implementada
* [x] Browse de manutenção da `ZZ1`
* [x] Inclusão
* [x] Alteração
* [x] Exclusão
* [x] Pesquisa
* [x] Visualização
* [x] Legenda verde para certificado válido
* [x] Legenda amarela para certificado vencendo em até 30 dias
* [x] Legenda vermelha para certificado vencido
* [x] Botão **Ocorrências**
* [x] Botão abre a rotina da `ZZ2`
* [x] `ZZ2` aberta filtrada pelo controle selecionado

---

## 6. STTZZ2.PRW — Ocorrências

* [x] Rotina `STTZZ2()` implementada
* [x] Browse de manutenção da `ZZ2`
* [x] Inclusão
* [x] Alteração
* [x] Exclusão
* [x] Pesquisa
* [x] Visualização
* [x] Rotina `STTZZ2FLT()`
* [x] Filtro das ocorrências pela `ZZ1`
* [x] Legenda verde para ocorrência dentro da tolerância
* [x] Legenda vermelha para ocorrência acima da tolerância
* [x] Cálculo do percentual não conforme
* [x] Comparação do percentual com a tolerância cadastrada na `ZZ1`

---

## 7. STTZZLIB.PRW — Biblioteca Comum

* [x] `NomeFornecedor()`
* [x] `NomeProduto()`
* [x] `PercNaoConforme()`
* [x] `CertificadoVencendo()`
* [x] `GravarLogTCC()`
* [x] `GetNomeFor()`
* [x] `BrowseNomeFor()`
* [x] `CalcTotOk()`
* [x] `CalcTotNok()`
* [x] Reaproveitamento de código
* [x] Redução de código duplicado

---

## 8. Tratamento de erros

* [x] Operações protegidas por `BEGIN SEQUENCE`
* [x] Utilização de `RECOVER`
* [x] Mensagem amigável ao usuário
* [x] Log técnico centralizado
* [x] Utilização de `GravarLogTCC()`
* [x] Restauração do `ErrorBlock`
* [x] Tratamento de inclusão da `ZZ1`
* [x] Tratamento de alteração da `ZZ1`
* [x] Tratamento de exclusão da `ZZ1`
* [x] Tratamento de inclusão da `ZZ2`
* [x] Tratamento de alteração da `ZZ2`
* [x] Tratamento de exclusão da `ZZ2`
* [x] Tratamento das operações da `ZZ2` filtrada
* [x] Bloqueio da exclusão de `ZZ1` quando existem registros `ZZ2` vinculados
* [x] Não foi necessário rollback manual, pois não há transação manual aberta pelas rotinas customizadas

---

## 9. Consultas padrão — SXB / F3

* [x] Consulta para `ZZ1`
* [x] Consulta de fornecedor `SA2`
* [x] Consulta de produto `SB1`
* [x] Consulta de controle na `ZZ2`
* [x] Consulta de fornecedor
* [x] Consulta de produto
* [x] Exibição do nome do fornecedor
* [x] Exibição da descrição do produto
* [x] Consultas testadas no Protheus 8

> **Observação:** na consulta da `ZZ1`, foi utilizada uma adaptação funcional para evitar problemas de exibição do campo virtual `ZZ1_NOMEFO` no Protheus 8.

---

## 10. Menu — SIGACOM

* [x] Grupo de menu **Controle ISO 9001**
* [x] Acesso à rotina **Controle de Fornecimento**
* [x] Acesso à rotina **Ocorrências de Fornecedores**
* [x] Rotina `STTZZ1` vinculada ao menu
* [x] Rotina `STTZZ2` vinculada ao menu
* [x] Menu testado no Protheus 8

> **Observação:** o Protheus 8 pode normalizar a apresentação de alguns textos do menu e possui limitações de acentuação no ambiente utilizado.

---

## 11. Programação Orientada a Objetos — ADVPL

* [x] Classe `TISO9001` implementada
* [x] Classe utilizada no projeto
* [x] Classe `TccLogger` implementada
* [x] Método `New()`
* [x] Método `Salvar()`
* [x] Instanciação da classe
* [x] Utilização da classe através do sistema de log
* [x] Organização do código em funções reutilizáveis

---

## 12. Integridade dos dados

* [x] Relacionamento entre `ZZ1` e `ZZ2`
* [x] Controle da existência do registro pai
* [x] Bloqueio de exclusão de `ZZ1` com ocorrências vinculadas
* [x] Validação de fornecedor
* [x] Validação de produto
* [x] Validação de datas
* [x] Validação de tolerância
* [x] Proteção das operações de gravação

---

## 13. Evidências

* [x] Evidências da criação da `ZZ1`
* [x] Evidências dos índices da `ZZ1`
* [x] Evidências dos campos virtuais
* [x] Evidências das validações da `ZZ1`
* [x] Evidências dos gatilhos
* [x] Evidências da criação da `ZZ2`
* [x] Evidências dos índices da `ZZ2`
* [x] Evidências das validações da `ZZ2`
* [x] Evidências da rotina `STTZZ1`
* [x] Evidências da rotina `STTZZ2`
* [x] Evidência do botão **Ocorrências**
* [x] Evidência do filtro da `ZZ2`
* [x] Evidência das legendas
* [x] Evidência do bloqueio de exclusão
* [x] Evidências das consultas F3
* [x] Evidência do menu
* [x] Evidências das funcionalidades funcionando

---

## 14. Dados e dicionário

* [x] `SA2`
* [x] `SB1`
* [x] `SX2`
* [x] `SX3`
* [x] `SX6`
* [x] `SX7`
* [x] `SXB`
* [x] `ZZ1`
* [x] `ZZ2`
* [x] Arquivos `.DBF`
* [x] Arquivos `.CSV`
* [x] Dados organizados na pasta `Dados-e-Dicionario/`

### Arquivos CSV

* [x] `sx2990.csv`

* [x] `sx3990.csv`

* [x] `six990.csv`

* [x] `sx7990.csv`

* [x] `sxb990.csv`

* [x] `zz1990.csv`

* [x] `zz2990.csv`

* [x] Utilitário `converte-dicionario.prg` utilizado para geração dos CSVs

---

## 15. Documentação

* [x] Descrição do projeto
* [x] Contextualização do problema
* [x] Objetivo do sistema
* [x] Estrutura do projeto
* [x] Estrutura da `ZZ1`
* [x] Estrutura da `ZZ2`
* [x] Índices
* [x] Campos virtuais
* [x] Validações
* [x] Gatilhos
* [x] Inícios padrão
* [x] Cálculos
* [x] Rotinas ADVPL
* [x] Biblioteca comum
* [x] Consultas
* [x] Menu
* [x] Tratamento de erros
* [x] POO
* [x] Integridade dos dados
* [x] Instalação
* [x] Compilação
* [x] Evidências

---

## 16. Diferenciais implementados

* [x] Legenda da `ZZ2` baseada na tolerância cadastrada na `ZZ1`
* [x] Classe ADVPL `TISO9001`
* [x] Classe de log `TccLogger`
* [x] Bloqueio de exclusão de `ZZ1` com registros `ZZ2` vinculados
* [x] Biblioteca comum
* [x] Reaproveitamento de código
* [x] Funções curtas e organizadas
* [x] Tratamento centralizado de erros
* [x] Integridade entre tabelas
* [x] Evidências das funcionalidades funcionando

---

# Critérios de avaliação

| Critério                              |  Peso | Status |
| ------------------------------------- | ----: | :----: |
| Dicionário — tabelas, índices e SX3   |   20% |    ✅   |
| Rotinas — mBrowse, legendas e filtros |   20% |    ✅   |
| Validações                            |   15% |    ✅   |
| Gatilhos                              |   10% |    ✅   |
| Tratamento de erros                   |   10% |    ✅   |
| Biblioteca `STTZZLIB`                 |   10% |    ✅   |
| Menu                                  |    5% |    ✅   |
| Documentação                          |   10% |    ✅   |
| Diferenciais                          | Extra |    ✅   |

---

# Conferência final antes da entrega

* [x] Projeto compilado
* [x] Projeto testado no Protheus 8
* [x] `TCC.PRJ` presente
* [x] Arquivos `.PRW` presentes
* [x] `sigacom.xnu` presente
* [x] Arquivos `.DBF` presentes
* [x] Arquivos `.CSV` presentes
* [x] `README.md` atualizado
* [x] `AUTOAVALIACAO.md` atualizado
* [x] Pasta `evidencias/` preenchida
* [x] Evidências referenciadas na documentação
* [x] Estrutura do projeto organizada
* [x] Documentação revisada
* [x] Projeto funcional no ambiente utilizado

---

# Resultado final

O projeto atende ao **núcleo mínimo** definido para o TCC e contempla também os principais requisitos adicionais e diferenciais.

Foram implementados:

* Dicionário de dados
* Tabelas `ZZ1` e `ZZ2`
* Índices
* Campos virtuais
* Validações
* Gatilhos e preenchimentos automáticos
* CRUDs
* `mBrowse`
* Legendas
* Filtro entre `ZZ1` e `ZZ2`
* Consultas F3
* Menu SIGACOM
* Biblioteca `STTZZLIB`
* Tratamento de erros
* Sistema de logs
* Classes ADVPL
* Integridade entre tabelas
* Documentação
* Evidências
* Arquivos de dados e dicionário
* Testes no Protheus 8

**Status do projeto: CONCLUÍDO**
