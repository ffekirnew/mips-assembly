	.text
main:
	la $a0, prompt
	jal print_string
	jal input_integer
	move $s0, $v0
	
	bge $s0, 90, grade_A
	bge $s0, 80, grade_B
	bge $s0, 70, grade_C
	bge $s0, 60, grade_D
	la $a0, F
	jal print_string
	
	grade_A:
		la $a0, A
		jal print_string
		b end_if
	
	grade_B:
		la $a0, B
		jal print_string
		b end_if
	
	grade_C:
		la $a0, C
		jal print_string
		b end_if
	
	grade_D:
		la $a0, D
		jal print_string
		b end_if
	
	grade_F:
		la $a0, F
		jal print_string
		b end_if

	end_if:
		jal exit

	.text
exit:
	li $v0, 10
	syscall
	
	.text
print_string:
	li $v0, 4
	syscall

	.text
input_integer:
	li $v0, 5
	syscall

	.data
A: .asciiz "A\n"
B: .asciiz "B\n"
C: .asciiz "C\n"
D: .asciiz "D\n"
F: .asciiz "F\n"
prompt: .asciiz "Enter your grade here: "