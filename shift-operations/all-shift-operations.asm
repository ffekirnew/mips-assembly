	.text
	.globl main
main:
	# Section 1: sll
	la $s0, new_line
	lw $t0, data
	sll $t1, $t0, 2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall
	
	# Section 2: sllv
	lw $t2, shift_2
	sllv $t1, $t0, $t2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall
	
	# Section 3: srl
	srl $t1, $t0, 2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall
	
	# Section 4: srlv
	srlv $t1, $t0, $t2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall
	
	# Section 5: sra
	sra $t1, $t0, 2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall

	# Section 6: srav
	srav $t1, $t0, $t2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall
	
	# Section 7: rol
	rol $t1, $t0, $t2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall
	
	# Section 8: ror
	ror $t1, $t0, $t2
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s0
	li $v0, 4
	syscall

	.data
data: .word 10 		# 0x1010
shift_2: .word 2
shift_4: .word 4
new_line: .asciiz "\n"