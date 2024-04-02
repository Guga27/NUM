org 100h
                 
 max db 19 ;
 temdegt db 0
 string db 19 DUP (0)
 shineMur db 13,10,13,10,'$'   
 space db ' $'        

MacroBinary MACRO p2

    MOV al,bh    
    MOV bl,al
    
    MOV ah,02h
    MOV al,bh
    
    MOV cx,08h
    
    start_loop: 
    SHL al,1
    JNC print_zero
    MOV dl,31h
    MOV bl,al
    INT 21h
    MOV al,bl
    LOOP start_loop
    jmp leave         
                
    print_zero: 
    MOV dl,30h
    MOV bl,al
    INT 21h
    MOV al,bl
    LOOP start_loop 
    leave:
ENDM

MacroDecimal MACRO p1     
    MOV bl,bh               
   
    MOV ah,02                
    mov al,bl               
    
    MOV al,bl               
    aam                     
                            
    push ax                
    MOV bl,ah               
    mov al,bl               
    aam                     
    
    add ax,3030h            
    push ax                 
    mov dl,ah               
    mov ah,02
    INT 21h                 
    pop dx                  
    mov ah,02h              
    int 21h                 
    
    pop ax                  
    add ax,3030h            
    mov dl,al               
    mov ah,02h              
    int 21h
                    
ENDM



MacroHex Macro p3
    mov al, bh    
    mov cl,al

    MOV al,bh
    SHR al,4
    MOV dl,al
    CMP dl,9
    JG ADD7
    JLE ADD30
    
    ADD7:
        add dl, 7h
    ADD30:
        add dl, 30h
           
    MOV ah,02h          
    INT 21h
    
        MOV al,bh    
        SHL al,4
        SHR al,4
        MOV dl,al
        CMP dl,9
        JG ADD0
        JLE ADD1 
    
    ADD0:
        add dl, 7h
    ADD1:
        add dl, 30h  
    
    MOV ah,02h          
    INT 21h    
ENDM
  

.code
  mov  AX, @data
  mov  DS, AX

  mov  AH, 0Ah
  lea  DX, max
  int  21h
           
  
; Binary start
      mov dx, offset msg1     
      mov ah, 9
      int 21h        
      
      mov  CL, temdegt
      mov  ch, 0  
      mov  SI, offset string
    
    loopBinary:         
      mov DI, CX
      mov BH, [SI] 
      
      MacroBinary BH
                
      mov CX, DI
      mov ah, 9
      mov dx, offset space
      int 21h  
    
      inc si 
      loop loopBinary
; Binary end 

;Decimal start
      mov dx, offset msg2     
      mov ah, 9
      int 21h        
       
      mov  CL, temdegt
      mov  ch, 0  
      mov  SI, offset string
    
    loopDecimal:         
      mov BH, [SI] 
      
      MacroDecimal BH
    
      mov ah, 9
      mov dx, offset space
      int 21h  
    
      inc si 
      loop loopDecimal
; Decimal end   

; Hex start
      mov dx, offset msg3     
      mov ah, 9
      int 21h        
      
      mov  CL, temdegt
      mov  ch, 0  
      mov  SI, offset string
    
    loopHex:         
      mov DI, CX
      mov BH, [SI] 
      
      MacroHex BH
                
      mov CX, DI
      mov ah, 9
      mov dx, offset space
      int 21h  
    
      inc si 
      loop loopHex
; Hex end  
             
    mov AH,4Ch
    int 21h   
    

msg1: db 0ah, 0dh, "HOYRTS: $"
msg2: db 0ah, 0dh, "ARAVT: $"  
msg3: db 0ah, 0dh, "ARVANZURGAAT: $"



