## Estudo dirigido módulo 3.

### Sistemas Digitais


#### Portas Lógicas.

- Portas Básicas
> AND

| A | B | S |
| --| --| --|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

> OR

| A | B | S |
| --| --| --|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

> NOT

| A | S |
| --| --|
| 0 | 1 |
| 1 | 0 |

> NOR

| A | B | S |
| --| --| --|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

> XOR

| A | B | S |
| --| --| --|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

> NAND

| A | B | S |
| --| --| --|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

> XNOR

| A | B | S |
| --| --| --|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |


- As portas lógicas que aqui estão listadas podem ser implementadas usando transistores (Agem como uma resistência controlada por tensão) --> Transistor ligado (5v resistência baixa), transistor desligado (0v resistência alta).
- No mesmo CI temos várias portas lógicas, este que deve ser energizado para ser ligado, ou seja consome energia.
- Portas NAND e OR são mais baratas para serem implementadas (Usar teorema de De Morgan).

#### Decodificadores.

- É um circuito que possui múltiplas entradas e múltiplas saídas que converte os códigos de entrada em códigos de saída onde os dois códigos são diferentes.
- Em geral o código de entrada é menor que o de saída (possui menos bits)
- Para um decodificador funcionar todas as suas entradas devem estar ativadas.


#### Mutiplexadores.
- É um switch/comutador digital para cada saída usamos n bits de seleção
- Cada combinação de bit gera uma saida diferente
![image](https://user-images.githubusercontent.com/18054053/48101239-7f1f2580-e20d-11e8-9e77-76b71b4da347.png)

> Demux responsável por fazer o contrário muito parecido com um decodificador

![image](https://user-images.githubusercontent.com/18054053/48101347-bee60d00-e20d-11e8-87c5-d27abf8bede9.png)
![image](https://user-images.githubusercontent.com/18054053/48101364-d02f1980-e20d-11e8-9f7c-04137be814e4.png)
