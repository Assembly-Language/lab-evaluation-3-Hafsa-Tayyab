

INCLUDE Irvine32.inc
.data
;public asmfunc
    msg db "Assembly function end here !",0
    sumMsg db "Sum of all odd values in the array: ",0
    countMsg db "Total number of odd values in the array: ",0
    sum DWORD 0
    count DWORD 0

.code
asmfunc PROC arr: DWORD
    mov ax, LEGTHOF arr
    mov esi, arr                    ; Passing array address
    mov ecx, 10                     ; Initializing ecx for loop
    xor ebx, ebx                    ; Clearing values from registers
    mov easx,0
iterateArray:
    mov ebx, DWORD PTR [esi]       ; One-by-one Pass array indexes.
    test ebx, 1h                   ; If this test results in 0, means the number is an even number.
    jz skipAddition                ; Thus, we would skip Additon. 
    add sum, ebx                   ; If not, then add it to sum variable.
    add count,1                    ; And also count this number.
skipAddition:
    add esi, TYPE arr              ; Increment to the next index.
    loop iterateArray
    call crlf

; Display results
    mov edx, offset sumMsg          ; Display message
    call writestring
    mov eax,sum                     ; Display sum
    call writedec
    call crlf
    call crlf

    mov edx, offset countMsg          ; Display message
    call writestring
    mov eax,count                     ; Display count
    call writedec
    call crlf
    call crlf

    mov edx, offset msg
    call writestring
    call crlf

    movsx eax,ax
    call writedec
    
    ret
asmfunc ENDP
end