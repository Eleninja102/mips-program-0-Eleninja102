# AUTHOR: COLETON WATT
# DATE: 2022-08-31
# DESCRIPTION: HELLO WOLRD CS2810 PROGRAM
# Registers used:
#	$v0		- syscall parameter and return value
#	$a0		- syscall paremeter: the string to print

# Data for the program goes here
.data
hello: .asciiz "Hello COLETON WATT CS2810 World!"

# Code goes here
.text
main:
	# Use systcall to interact with the system
	la $a0, hello	# load the location/address of hello string into $a0
	li $v0, 4		# 4 is the print_string() syscall
	syscall			# execute call
	
	li $v0, 10		# 10 is the exit program syscall
	syscall			# execute call

## end of hello.asm
