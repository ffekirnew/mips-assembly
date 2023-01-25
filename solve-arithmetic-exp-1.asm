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
	
	
	
	
	.data
promt_x: .asciiz