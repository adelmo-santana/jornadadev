# AxCadastro × mBrowse

## a. Quando você usaria AxCadastro e quando usaria mBrowse ? Dê um exemplo de cada.

### AxCadastro 
É uma função de cadastro já pronta, com todos os elementos que complementam umn crud simples para tabelas já existentes, ideal para prototipar.

ex.: a própria tabela ZA1 de cadastro de pets, ela apenas guarda informações simples, como nome e raça, sem exigir verificações complexas 
  
### mBrowse
É uma tela mais controlada de consultas mais detalhadas, com costumização dos itens, filtros dinâmicos e colunas mais detalhadas, ideal para ambientes profissionais.

ex.: exibir uma lista de pedidos pendentes, ao selecionar um pedido e clicar em um botão customizado "Faturar", o sistema deve abrir uma tela de processamento específica, calcular impostos em lote e gerar uma nota fiscal.

## b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

Permite legendas coloridas, costumização de colunas e possui filtros dinâmicos;.

## c. Na configuração de legendas ( aColors ), por que a regra ".T." deve ficar por último?

Ela é mantém a cor padrão caso algumas das verificações que estiverem acima dela sejam falsas, por conta da ordem que acontece de cima para baixo.

## d. Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?

o campo virtual calcula e exibe o nome em tempo de execução sem gravar, o gatilho grava fisicamente o nome no banco de dados assim que ele for digitado