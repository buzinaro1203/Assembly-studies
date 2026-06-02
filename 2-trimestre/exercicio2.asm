.data
n: .word 5
r: .word 0
vetor: .word 1 2 3 4 5 
# word tem 4 bytes.
.text

main:
	# n -> $t0
	# i -> $s0
	# r -> $t1
	# p -> $t2
	lw $t0, n	 	# $t0 = n -> carregando n na memoria
	li $s0, 0 	# i = 0
	li $t1, 0		# r = 0
	la $t2, vetor		# p = &vetor[0]
loop:
	# if (i>=n) goto end
	bge $s0,$t0, end
	lw $t3, ($t2)		# $t3 = *p.Guarda o valor contido no espaço da memório que p esta apontando
	add $t1,$t1, $t3	# r+= *p (*p = valor do endereço da memoria que p esta guardando
#	add $t2, $t2, 1 	# p++ errado. Incrementa 1 no endereço da memória
	add $t2, $t2, 4 	# P += 4. Correto pois .word possui 4bytes
	add $s0, $s0, 1		# i++
	
	b loop

end:
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall