#  Data Area - allocate and initialize variables
.data

prompt:  .asciiz "Enter the number:\n"
newline: .asciiz "\n"

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here

exit:

	# Exit
	ori     $v0, $0, 10
	syscall
