	.text
	.globl main
main:
	# load the numbers
	lw $s0, n1
	lw $s1, n2
	la $s2, new_line
	
	
	# and
	and $t1, $s0, $s1
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s2
	li $v0, 4
	syscall
	
	# andi
	# or
	or $t1, $s0, $s1
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s2
	li $v0, 4
	syscall

	# ori
	# xor
	xor $t1, $s0, $s1
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s2
	li $v0, 4
	syscall
	
	# xori
	# not
	
	not $t1, $s0
	
	add $a0, $zero, $t1
	li $v0, 1
	syscall
	
	add $a0, $zero, $s2
	li $v0, 4
	syscall
	
	.data
n1: .word 8
n2: .word 10
new_line: .asciiz "\n"