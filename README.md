# Assembly-Interruptions
Some assembly codes using interruptions to display and read strings.



## Overview (Part1)
This program is written in x86 assembly language and demonstrates basic data manipulation and display using DOS interrupts. 

The program defines data segments, moves values to registers, and outputs strings and byte values to the screen.


## Overview (Part2)
This program is written in x86 assembly language and demonstrates how to read a series of values from the keyboard into an array and then display these values on the screen. The program uses DOS interrupts for input and output operations.


## Data Segment (Part 1)
The DATA SEGMENT contains variables and strings used in the program:

octet db 65: Defines a byte with the value 65 (ASCII 'A').

word dw 6162h: Defines a word (2 bytes) with the hexadecimal value 6162h.

chaine0 db "La valeur de OCTET est :",24h: A string to display the value of octet.

chaine1 db 0ah,0dh,"La valeur du premier octet de Word est :",24h: A string to display the first byte of word.

chaine2 db 0ah,0dh,"La valeur du second octet de WORD est :",24h: A string to display the second byte of word.


## Data Segment (Part 2)
The DATA SEGMENT contains variables and messages used in the program:

TAB db 10 dup (0): Defines an array TAB with 10 bytes initialized to 0.

n equ 10: Defines a constant n with a value of 10, representing the size of the array.

message db "vous pouvez commencer la saisie des valeurs de TAB ",0ah, 0dh,24h: A string message to prompt the user to start entering values.


# Execution

To run this program, you need an x86 assembler (like MASM or TASM) and a DOS environment or DOS emulator (like DOSBox). 

Assemble and link the program, then run the executable in the DOS environment.


