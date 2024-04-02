;;[[                
org 100h   

    mov dx, offset msg
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h    

    mov bl, al
    mov dx, 10
    mov ah, 02h
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov dx, offset msg1
    mov ah, 09h
    int 21h  
    mov al, bl
    shr al,4 
   
    call print
    
    mov al, bl
    shl al, 4
    shr al, 4
    call print
    int 20h
    
    print:
    
        xor ah, ah
        mov si, ax
        mov dl, [si+hex]
        mov ah, 2
        int 21h
ret  
              
    hex db '0123456789ABCDEF'    
    msg db 'Temdegtee oruulna uu: $'
    msg1 db '16t utga ni: $' 
    





