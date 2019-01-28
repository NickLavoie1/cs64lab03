# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	prompt: .asciiz "Give me an integer number between 0 and 1000:\n"
	hello_world: .asciiz "Hello World!\n"
	out_1: .asciiz "User chose "
	out_2: .asciiz ". But is it the right answer?!"


#Text Area (i.e. instructions)
.text
main:
	# Print first statement
	li $v0, 4
	la $a0, prompt
	syscall

	# Take in user integer input 
	li $v0, 5
	syscall
	move $t0, $v0

	# Print Hello World
	li $v0, 4
	la $a0, hello_world
	syscall

	# Print first part of output
	li $v0, 4
	la $a0, out_1
	syscall

	# Fill user input into output
	li $v0, 1
	move $a0, $t0
	syscall

	# Print second part of output
	li $v0, 4
	la $a0, out_2
	syscall



exit:
	# Exit
	li $v0, 10
	syscall

