.data
	new_double: .double 7.202  # declare the double we would want
	zero: .double 0.0          # since we don't have a zero value in double, we have to declare it ourselves

.text
	ldc1 $f2, new_double       # load the new double to $f2, and $f3
	ldc1 $f0, zero             # load the double zero to $f0, and $f1 since doubles take up 64 bits of space
	
	li $v0, 3                  # use the syscall code 3 to print doubles
	add.d $f12, $f2, $f0       # set the $f12 to be the sum of the previous registers
	syscall                    # syscall as always
