.data

	msg: .asciiz "Hello World\n"
	number: .word 10
.text
# Duvidas diferença entre li e la e move e la.
	main:
	# Código para printar uma mensagem
	# Load imadiate (li) -> carregando 4 em v0
	# load adress (la) -> carrega a posição de msg em a0
	li $v0, 4
	la $a0, msg
	syscall
	
	li $t0, 5
	li $v0, 1
	move $a0, $t0
	syscall
	
	lw $a0, number
	syscall
	
	
	li $v0, 10
	syscall #fecha o programa