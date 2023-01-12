// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@sp
M=0
@ssp
M=0
(LOOP)
@24576
D=M
@CLR
D;JEQ
@sp
D=M
@24576
D=A-D
@FILL
D;JGT
(FILL)
@sp
D=M
@SCREEN
A=A+D
M=-1
@sp
M=M+1
@LOOP
0;JMP
(CLR)
@sp
D=M
@ssp
D=D-M
@LOOP
D;JLT
@sp
D=M
@SCREEN
A=A+D
M=0
@sp
M=M-1
@LOOP
0;JMP




