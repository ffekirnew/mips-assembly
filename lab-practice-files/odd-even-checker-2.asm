	.text
	.globl main
main:
	addi $v0, $zero, 4
	la $a0, prompt
	syscall
	
	addi $v0, $zero, 5
	syscall
	
	move $s0, $v0
	
	addi $t0, $zero, 2
	
	div $t0, $s0, $t0
	
	mfhi $s1
	
	addi $v0, $zero, 4
	la $a0, result
	syscall
	
	addi $v0, $zero, 1
	move $a0, $s1
	syscall
	
	addi $v0, $zero, 10
	syscall
	
	.data
prompt: .asciiz "Enter the number you want to check in here:	"
result: .asciiz "The number is odd if next is 1, and even if next is 0.\nNext = "