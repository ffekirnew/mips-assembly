# Converting a character from upper case to lower case

	.text
	.globl main
main:
	# take in the input
	ori $v0, $zero, 4
	la $a0, prompt
	syscall
	
	
	# perform the exchange
	# print the output

	.data
prompt: .asciiz "Enter the word you want to convert form upper to lower: "
result: .asciiz "The result is:		"