//MEMORY[16] = 16384;
@16384
D = A
@16
M = D

//while (true)
(LOOP)
//{
//    if (MEMORY[KEYBOARD] == 0)
@KBD
D = M
@END
D;JNE
//    {
//        if ((MEMORY[16] - 16384) > 0)
@16384
D = M
@16
D = A-D
@END
D;JLE
//        {
//            MEMORY[16] = MEMORY[16] - 1;
@16
M=M-1
//            MEMORY[MEMORY[16]] = 0x0000;
@16
D=M
@D
M=0

@16
A = M
M = 0



//        }
//    }
//    else
//    {
//        if ((MEMORY[16] - 24576) < 0)
@KBD
D=M
@16
D=A-D
@END
D;JGE
//        {
//            MEMORY[MEMORY[16]] = 0xFFFF;

//            MEMORY[16] = MEMORY[16] + 1;
@16
M=M+1
//        }
//    }
//}
(END)
@END
0;JMP