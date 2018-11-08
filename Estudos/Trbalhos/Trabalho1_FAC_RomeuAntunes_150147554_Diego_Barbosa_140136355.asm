## Calculo de arco cotg por s�rie de taylor 

.data

verificaIntervaloEntrada: 	.float	1.0
zero: 						.float	0.0
resetaEntrada:				.float 	0.0
stringInvalido: 			.asciiz "Entrada Inválida \n"
stringValido: 			.asciiz "Entrada valida \n"

.text

main: 
	li $v0, 6 											# Instrução para o programa ler um Float
	syscall 
	
	mov.s $f2, $f0 										# Move o Float lido de $f0, para o registrador $f2
	l.s $f4, zero 										# Carrega diretamente o valor zero em $f4.
	l.s $f3, verificaIntervaloEntrada 					# Carrega o valor para verificar a entrada do Sistema (1 em $f3)
	
	c.lt.s $f2, $f4										# Compara a entrada com o valor 0, setando a Flag do Co-processador.
	bc1t entradaInvalida 								# Se a Entrada for menor que 0, irá pular para Label entradaInvalida
	c.lt.s $f2, $f3 									# Compara a entrada com o valor 1, setando a Flag no Co-processador
	bc1f calculaArctangMaior1 							# Pula para função calculaArctangMaior1 caso a entrada seja > 1.
	j ArctangMenor1 								# Se chegar aqui a entrada está entre 0 e 1

	

## Essa vai ser a função responsável por calcular o Arco Tangente para valor de entrada Menor que 1

ArctangMenor1:
	

	li $s0, 1 											# Carregando o valor do contador de indicesem $s0, começando em 1
	# Salvar o primeiro valor de x
	
	calculaIndice:	
		beq $s0, 13, calculaArctangMenor1 					# Limite arbitrario 
		jal armazenaExpoente
		div.s $f12, $f0, $s0 								# verificar se precisa converter para float
		## Salvar resultado em variavel final somando os termos
		addi $s0, $s0, 2 									# Incrementa de 2 em 2 t0
		j calculaIndice
	
		armazenaExpoente:  									# Rotina que eu arrumo a variavel do expoente 
			addi $t0, $s0, 0 									# salva de s0 para t0 armazena o expoente no t0
			add.s $f0, $f4, $f2 								# Salva o valor incial em f0
	
			loop:
			beq $t0, 1, exitCalculaTermo  						# verifcando se o expoente ja chegou em 1
			mul.s $f0, $f0, $f0 								# realiza a exponenciacao de 1 vez
			addi $t0, $t0, -1									# decrementa o exponete em 1 para chegar na condicao desejada
			j loop	

				exitCalculaTermo:
				j $ra # Volta por jal
	
	
	
calculaArctangMenor1:

	li $s1,1
	
	calculaSinal

	
calculaArctangMaior1:

		
	
entradaInvalida:
	
	li $v0, 4  					# Comando para realizar o print de String
	la $a0, stringInvalido		# Printa a variavel stringInvalido.
	syscall
	
	li $v0, 10					# Comando para terminar o Programa.
	syscall 



	
