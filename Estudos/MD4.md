## Estudo dirigido do módulo 4.

### Sistemas Digitais

#### Somadores / Subtratores
- Para somar o numero em binario lembrar sempre do Carry out (Vai um) quando ocorre a soma de 1 bit mais 1
> A soma ocorre do mesmo jeito que os numeros na base decimal a difirença está quando a soma resulta em 2 sendo assim dizemos que vai um este que fica no carry out

- Um circuito somador de 2 bits é dito como somador parcial
- Um circuito somador de 3 bits é dito como somador completo visto que apresenta também o Carry in sendo este o vai um de alguma das operações anteriores.
- Realizar a tabela verdade para achar o circuito correspondente
- Dependendo do problema considerar o cascateamento de vários somadores para reduzir o tamanho do circuito.
> Somador total

![image](https://user-images.githubusercontent.com/18054053/48133324-91d14300-e27d-11e8-926c-deee3db83bc3.png)

> Subtratores
- Funcionam de forma análoga aos somadores visto no entanto a regra para o carry muda sendo ele expressado quando ocorre a operação 0-1;

> Complemento de 2
- Realizar complemento de 1(inversão de bits) somar 1 ao LSB.
- Usado para realizar subtração através de somas.

#### Multiplicadores
- A multiplicação em binário ocorre da mesma forma que em números decimais sua diferença está apenas na soma dos resultados que são cascateados.

![image](https://user-images.githubusercontent.com/18054053/48133654-b0840980-e27e-11e8-8b9e-1f524b829d68.png)

> Deve se realizar a soma dos multiplicandos deslocados da mesma forma que somam-se binários. Respeitando as regras dos carrys in/out

##### Mapa de Karnaugh
- Melhor forma para se extrair o circuito lógico final

![image](https://user-images.githubusercontent.com/18054053/48133854-4e77d400-e27f-11e8-8d19-12c8e3d9e878.png)

#### CPU
- Circuito eletrônico de um computador que executa instruções de um programa
> As operações que compõe as instruções são divididas basicamente em 3 tipos
- Entrada / saída
- Operações de controle
- Operações básicas aritméticas e lógicas

- Passos para executar uma instrução por parte da CPU
- Fetch (Busca) - Busca na memória qual instrução deve ser executada
- Decode (Decodifica) - Decodifica essa instrução, lendo o que deve ser feito e com quais operandos
- Execute (Executa) - Efetivamente executa a instrução
> Fetch, Decode, Execute (Mantra de FAC)

> Alguns exemplos de instruções

![image](https://user-images.githubusercontent.com/18054053/48134184-5ab06100-e280-11e8-9978-be0514721192.png)

##### Modelo Von Neumann
![image](https://user-images.githubusercontent.com/18054053/48134213-7d427a00-e280-11e8-8975-bb5c05ff2c5c.png)

- Memória, responsável por guardar tanto o programa a ser executado quanto os dados dele (resultados)
- Unidade de Controle, coordena os operandos e operações, buscando dados na memória e disponibilizando para que os outros circuitos executem essas Operações
- Unidade Lógico Aritmética (ULA), executa propriamente essas operações, retornando um valor
