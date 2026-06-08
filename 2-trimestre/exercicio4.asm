.data
	n: .word 5
	
	vetor: .word 10 20 20 25 25
.text
main:
	li $t4,0 # numeros maiores q a media
	li $t5,0 # numeros menores q a media
	li $s4,0
	lw $s1,n	# $s1 -> n
	li $s0,0	# $s0 -> i = 0
	li $t1,0	# $t1 -> r = 0
	la $t2, vetor	# ponteiro do vetor apontando para vetor[0]
	la $t6, vetor
loop:
	#if i >= n goto get Elements
	bge $s0,$s1,getElements
	lw $t3, ($t2)
	add $t1,$t1,$t3
	
	add $t2,$t2,4
	add $s0,$s0,1
	
	b loop
getElements:
	div $s3,$t1,$s1
	
	bge $s4,$s1,end
	lw $t3, ($t6)
	
	#if vetor[i] >= media gotobiggerOrEqualThanMedia
	bge $t3, $s3, biggerOrEqualThanMedia
	b lowerThanMedia
biggerOrEqualThanMedia:
	add $t4,$t4, 1
	
	add $t6,$t6,4
	add $s4,$s4,1
	b getElements
lowerThanMedia:
	add $t5,$t5, 1
	
	add $t6,$t6,4
	add $s4,$s4,1
	b getElements
end:
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 1
	move $a0, $t5
	syscall
	
	li $v0, 10
	syscall
	
		