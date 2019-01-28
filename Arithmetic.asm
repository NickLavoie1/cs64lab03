# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# Take integer input from user, store in t0, t1, and t2
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0

	# Multiply C by 3, store result into C
	li $t3, 3
	mult $t2, $t3
	mflo $t2

	# Add A and B, multiply result by 2, then subtract result by C
	add $t0, $t0, $t1
	add $t0, $t0, $t0
	sub $t0, $t0, $t2

	# Print result
	li $v0, 1
	move $a0, $t0
	syscall


exit:
	# Exit
	li $v0, 10
	syscall

