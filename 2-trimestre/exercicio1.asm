.data


.text
	#Exercicio: Somar i n vezes
	
	
	# n => $t0
	# i => $t1
	# r => $t2 
 main:
	li $t1, 0 			# i = 0
	li $t0, 5 			# n = 5
	li $t2, 0 
 loop:
 	
 	bgt $t1,$t0, end	# if (i > n) goto end else executa
 	add $t2, $t2, $t1	# r+=i
 	
 	add $t1, $t1, 1		# i++
 	b loop			#goto loop
 end:
 	# print r
 	li $v0,1
 	move $a0, $t2
 	syscall
 	
 	# Encerra o programa
 	li $v0 , 10
 	syscall