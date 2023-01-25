# function add_two_inputs() {
#	register int i = input("Please enter the first value to add: ");
#	register int j = input("Please enter the second value to add: ");
#	register int k = i + j;
#	print("The result is " + k);
# }

	.text
	.globl main
main:
	# take in the first number
	li $v0, 4
	la $a0, prompt_1
	syscall
	
	li $v0, 5
	syscall
	
	add $t0, $v0, $zero
	
	# take in the second number
	li $v0, 4
	la $a0, prompt_2
	syscall
	
	li $v0, 5
	syscall
	
	# perform the addition
	add $t0, $t0, $v0
	
	# display the result prompt
	li $v0, 4
	la $a0, result_prompt
	syscall
	
	li $v0, 1
	add $a0, $t0, $zero
	syscall
	
	# exit from the program
	li $v0, 10
	syscall


	.data
prompt_1: .asciiz "Enter first number here:	"
prompt_2: .asciiz "Enter second number here:	"
result_prompt: .asciiz "The result of the sum of the two numbers is: "
	