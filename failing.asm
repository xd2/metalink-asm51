ORG 00H
MOV R0,#50H   ;get memory location in memory pointer R0
MOV R1,#51H   ;get memory location on memory pointer register R1
MOV A,@R0      ;get content of memory location 50H to accumulator
ADD A,@R2        ;err bad register
MOV R0,#52H    ;get 52H to memory pointer R0
MOV@R0,A         ;copy content of A to memory location 52H
END
