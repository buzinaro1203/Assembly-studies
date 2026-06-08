.data
	n: .word 5
	vetor1: .word 1 2 3 4 5 
	vetor2: .word 1 2 3 4 5	
	vetor3: .word 0 0 0 0 0
.text

main:
	# pv1 -> $t0 = &vetor1
	# pv2 -> $t1 = &vetor2
	# pv3 -> $t2 = &vetor3
	# i -> $s0 = 0
	# n -> $s1
	lw $s1,n
	li $s3,0
	li $s0,0
	
	la $t0, vetor1
	la $t1, vetor2
	la $t2, vetor3
	
loop:
	#if i>=n gotoend
	bge $s0, $s1, end
	
	lw $t3, ($t0)	# Guarda vetor1[p] em $t3
	lw $t4, ($t1)	# Guarda vetor2[p] em $t4
	
	add $t5,$t4,$t3
	
	sw $t5, ($t2)
	lw $t5, ($t2)

	li $v0, 1
	move $a0, $t5
	syscall
			
	add $t0, $t0, 4 #Passando para o proximo indice
	add $t1, $t1, 4 #Passando para o proximo indice
	add $t2, $t2, 4 #Passando para o proximo indice	
	
	

	
	add $s0, $s0, 1 #i++
	b loop
end:

	
	li $v0, 10
	syscall
	
	
