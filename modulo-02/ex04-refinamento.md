# Refinamento sucessivo
## Nivel 1 - Visão Geral:
```
Ler itensCompra
Calcular subTotal
Se clienteCartaoFidelidade valorTotal = subTotal * 0.95
Mostrar valorTotal 
```

## Nivel 2 - Detalhamento:
### Ler itensCompra
Soma e armazena o valor dos itens escolhidos do cliente na variável itensCompra.

### Calcular subTotal
Variável subTotal recebe todos os valores armazenados até agora na variável itensCompra.

### Se clienteCartaoFidelidade valorTotal = subTotal * 0.95
Perguntar se o cliente possui cartão fidelidade, caso a resposta seja SIM, a variável valorFinal vai receber todo o subTotal da compra com um desconto de 5% no cálculo final. Caso contrário a variável receberá o valor integral da variável subTotal.

### Mostrar valorTotal 
Mostra o valor final da compra ao cliente.
Fim.