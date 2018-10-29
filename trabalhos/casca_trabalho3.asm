# FAC: TRABALHO 03
	.text
main:
	li $v0, 7	# load appropriate system call code into register $v0;
			# code for reading double is 7
	syscall		# call operating system to perform operation
      
# =================== IMPLEMENTE AQUI SUA SOLUCAO: INICIO

# O valor lido do teclado estah em $f0




# O valor do resultado do arccot devera ser escrito em $f12
	
# =================== IMPLEMENTE AQUI SUA SOLUCAO: FIM      

      jal  print            # call print routine. 
      li   $v0, 10          # system call for exit
      syscall               # we are out of here.
		
#########  routine to print messages
      .data
space:		.asciiz  " "          # space
new_line:	.asciiz  "\n"         # newline
string_ARCCOT:	.asciiz  "arccot= "
      .text
print:	la   $a0, string_ARCCOT  
      	li   $v0, 4		# specify Print String service
      	syscall               	# print heading
      	move   $a0, $t0      	# 
	li   $v0, 3           	# specify Print Double service
      	syscall               	# print $t0

	
