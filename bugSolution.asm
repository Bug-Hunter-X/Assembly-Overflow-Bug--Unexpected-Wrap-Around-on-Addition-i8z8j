```assembly
mov ax, 1000h ; Load a large value into AX
cmp bx, 0FFFFh - 1000h ; Check if adding BX will cause overflow
jge overflow_handler ; Jump to overflow handler if overflow would occur
add ax, bx ; Add BX to AX if no overflow
jmp end

overflow_handler:
; Handle the overflow condition here.  Possible actions:
; - Set an error flag
; - Use a larger register size
; - Throw an exception
mov ax, 0FFFFh ; Example: Set AX to maximum value to indicate overflow

end:
; Continue program execution
```