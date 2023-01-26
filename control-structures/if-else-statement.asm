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
		
	li $v0, 1
	move $a0, $t0
	syscall
	
	sgt $t1, $t0, $zero
	
	beqz $t1, else
		la $a0, positive
		jal print_string
		b end_if
	
	else:
		la $a0, negative
		jal print_string
	
	end_if:
		jal exit
	
		
	
exit:
	li $v0, 10
	syscall

print_string:
	li $v0, 4
	syscall
	
	.data
prompt: .asciiz "Enter the number you want to check in here: "
positive: .asciiz " is indeed greater than zero."
negative: .asciiz " is less than zero."