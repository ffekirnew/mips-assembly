# if (condition) {
# 	do something
# }

	.text
	.globl main
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	sgt $t1, $t0, $zero
	
	beqz $t1, end_if
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 4
		la $a0, result
		syscall
	
	end_if:
		jal exit
	
exit:
	li $v0, 10
	syscall
	
	.data
prompt: .asciiz "Enter the number you want to check in here: "
result: .asciiz " is indeed greater than zero."