	.text
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	
	move $a0, $v0
	
	li $v0, 1
	syscall
	
	jal exit

	.text
exit:
	li $v0, 10
	syscall

	.data
prompt: .asciiz "Enter the number here: "