org 100h  

    mov dx, offset msg1  
    mov ah, 09h
    int 21h   

    mov ah, 1         
    int 21h  
                            
    mov cl, al
    
    mov dx, offset msg2  
    mov ah, 09h
    int 21h
    
    mov bx, 2        
 
    mov ax, cx       
    mov si, [hoyrt + 7]         
 
                 
    binary:
        mov dx, 0    
        div bx          
        add dx, 48   
        mov [si], dl 
        dec si       
        cmp ax, 1    
        jl pbin
        jmp binary 
             
                  
    pbin:
        mov dx, offset hoyrt  
        mov ah, 9
        int 21h
        
        mov dx, offset msg2  
        mov ah, 09h
        int 21h
    
        mov ax, cx            
        mov si, [aravt+2]     
        mov bx, 10
        jmp decimal
    
    decimal:    
        mov dx, 0              
        div bx
        add dx, 48             
        mov [si], dl            
        dec si                 
        cmp ax, 1              
        jl exit
        jmp decimal
    
    exit:         
        mov dx, offset aravt     
        mov ah, 9   
        int 21h
ret                    
   
    hoyrt: db "00000000$"       
    aravt: db "000$"          


    msg1 db "Garaas temdegtiig oruulna uu: $"  
    msg2 db " , $"



