org 100 
            
.data
    list DB  10 DUP(?) 
    
    
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx , 10
    mov si, offset list 
     
    loopIn:
    mov ah, 1
    int 21h
    
    mov [si], al
    inc si
    loop loopIn
    
    mov ah, 2
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h

    
    mov si, offset list        
    mov bl, [si]
    
    loopx:
        inc si
        cmp si, offset list+10
        jge printMax
        mov al, [si]
        cmp al, bl
        jle continue
        mov bl, al
    continue:
        loop loopx
    printMax:
        mov si, offset list 
        mov dl, bl
        
        mov ah, 02h
        int 21h   

        
    mov dl, 32
    mov ah, 2
    int 21h
    
    ; Find minimum value
    mov si, offset list
    mov bl, [si]
    
    looph:
        inc si
        cmp si, offset list+10
        jge printResult
        mov al, [si]
        cmp al, bl
        jge continueh
        mov bl, al
    continueh:
        loop looph
    
    ; Print minimum value
    printResult:
        mov si, offset list 
      
        mov dl, bl
        mov ah, 02h
        int 21h     
        
    mov ah, 2
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h
        
    ; check sort
        mov cx, 9 
    mov si, offset list   
  
    mov bl, [si]
    inc si
    
    checkAsc:
    mov al, [si]
    cmp al, bl
    jl notSorted
    
    mov bl, al
    inc si
    loop checkAsc
    
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'R'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h  
    
    mov dl, 'M'
    mov ah, 02h
    int 21h  
    
    mov dl, 'B'
    mov ah, 02h
    int 21h  
    
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'L'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h  
    
    mov dl, 'G'
    mov ah, 02h
    int 21h
    
    mov dl, 'D'
    mov ah, 02h
    int 21h
    
    mov dl, 'S'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'N'
    mov ah, 02h
    int 21h
    
    
    jmp done
    
    notSorted:
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'R'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h  
    
    mov dl, 'M'
    mov ah, 02h
    int 21h  
    
    mov dl, 'B'
    mov ah, 02h
    int 21h  
    
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'L'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h  
    
    mov dl, 'G'
    mov ah, 02h
    int 21h
    
    mov dl, 'D'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'E'
    mov ah, 02h
    int 21h
    
    mov dl, 'G'
    mov ah, 02h
    int 21h
    
    mov dl, 'U'
    mov ah, 02h
    int 21h
    
    mov dl, 'I'
    mov ah, 02h
    int 21h
    

    jmp done
    
    done:
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
main endp
  

ret  
    
    

