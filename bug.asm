```assembly
mov ax, 1000h ; Load a large value into AX
add ax, bx ; Add BX to AX, assuming BX contains a small value
```
This code snippet might lead to an overflow if the sum of AX and BX exceeds 0FFFFh.  The overflow flag will be set, but the result in AX will wrap around to a smaller value, leading to unexpected behavior.