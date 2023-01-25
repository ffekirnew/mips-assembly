# main
# {
# 	int x = prompt("Enter a value for x: ");
# 	int y = ((5 * x * x) + (2 * x) + 3);
#	print("The result is: " + y);
# }

	.text
	.globl main
main:
	# register mapping
		# x -> $t0
		# y -> $s0
		# auxiliary -> $t1
	
	addi $v0, $zero, 4
	la $a0, prompt_x
	syscall
	
	addi $v0, $zero, 5
	syscall
	
	add $t0, $v0, $zero
	
	# do 2 * x and store in $s0 (y)
	addi $t1, $zero, 2		# store 2
	mult $t0, $t1
	
	mflo $s0

	# do x / 2 and return $t0 to only hold x
	div $t0, $s0, $t1
	
	mflo $t0
	
	# do x * x and store in $t0
	mult $t0, $t0
	mflo $t0
	
	# do 5 * x^2 and store in $t0
	addi $t1, $zero, 5		# store 5
	mult $t0, $t1
	
	mflo $t0
	
	# add $t0 to $s0
	add $s0, $s0, $t0
	
	
	# add imidiet # to $s0
	addi $s0, $s0, 3
	
	
	# display result
	addi $v0, $zero, 4
	la $a0, result
	syscall
	
	add $a0, $s0, $zero
	
	addi $v0, $zero, 1
	syscall	
	
	.data
prompt_x: .asciiz "Enter the 'x' value: "
result: .asciiz "The result is: "