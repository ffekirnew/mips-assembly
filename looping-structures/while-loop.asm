# i = 0
# while (i < 10) {
# 	print(i)
# }

	.text
main:
	add $t0, $zero, 0
	
	blt $t0, 10, while_loop
	
	while_loop:
		move $a0, $t0
		li $v0, 1
		syscall
		add $t0, $t0, 1
		blt $t0, 10, while_loop
	
	li $v0, 10
	syscall
		