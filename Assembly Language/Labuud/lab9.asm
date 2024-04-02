
NAME "PIXEL"

ORG  100H

MOV AH, 0   ; SET DISPLAY MODE FUNCTION.
MOV AL, 13H ; MODE 13H = 320X200 PIXELS, 256 COLORS.
INT 10H     ; SET IT!





;;;;;;;;;;;;;;;;;;;;;;;;;;;         START DRAWING HOUSE        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

;;BOX;;

; TOP HORIZONTAL LINE (HOUSE)
MOV CX,60
MOV DX,50
HOUSET:
MOV AH,0CH 
MOV AL,07H 
INT 10H 
INC CX 
CMP CX,110 
JNZ HOUSET

; BOTTOM HORIZONTAL LINE (HOUSE)
MOV CX,60
MOV DX,80
HOUSEB:
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
CMP CX,110
JNZ HOUSEB

; LEFT VERTICAL LINE (HOUSE)
MOV CX,60
MOV DX,50
HOUSEL: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,80
JNZ HOUSEL

; RIGHT VERTICAL LINE (HOUSE)
MOV CX,110
MOV DX,50
HOUSER: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,80
JNZ HOUSER
;;BOX;;;

; LEFT ROOF LINE (HOUSE)
MOV CX,60
MOV DX,50
HSELR: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
DEC DX
CMP CX,83
CMP DX,24
JNZ HSELR



; RIGHT ROOF LINE (HOUSE)

MOV CX,110
MOV DX,50
HSERR: 
MOV AH,0CH
MOV AL,07H
INT 10H
DEC CX
DEC DX
CMP CX,83
CMP DX,24
JNZ HSERR

; END OF HOUSE OUTLINE

;; DRAW THE DOOR ;;

; LEFT DOOR LINE (HOUSE)
MOV CX,83
MOV DX,62
HSELD: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,80
JNZ HSELD

; RIGHT DOOR LINE (HOUSE)
MOV CX,88
MOV DX,62
HSERD: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,80
JNZ HSERD

; TOP DOOR LINE (HOUSE)
MOV CX,83
MOV DX,62
HSETD: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
CMP CX,88
JNZ HSETD

;;DOOR FINISHED;;

;; DRAW TWO WINDOWS;;

; LEFT WINDOW VERT LINE1 (HOUSE)
MOV CX,65
MOV DX,60
HSELWV1:
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,70
JNZ HSELWV1

; LEFT WINDOW VERT LINE2 (HOUSE)
MOV CX,75
MOV DX,60
HSELWV2: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,70
JNZ HSELWV2

;LEFT WINDOW VERT LINE3 (HOUSE)
MOV CX,70
MOV DX,60
HSELWV3: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,70
JNZ HSELWV3


; RIGHT WINDOW VERT LINE1 (HOUSE)
MOV CX,95
MOV DX,60
HSERWV1: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,70
JNZ HSERWV1

; RIGHT WINDOW VERT LINE2 (HOUSE)
MOV CX,105
MOV DX,60
HSERWV2: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,70
JNZ HSERWV2

; LEFT WINDOW VERT LINE3 (HOUSE)
MOV CX,100
MOV DX,60
HSERWV3: MOV AH,0CH
MOV AL,07H
INT 10H
INC DX
CMP DX,70
JNZ HSERWV3

; WINDOW HORZ LINE1 (HOUSE)
MOV CX,65
MOV DX,60
HSEWH1: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
CMP CX,75
JNZ HSEWH1

MOV CX,95 ;THIS LINE CONTINUES FOR THE SECOND WINDOW AT COLUMN=190
MOV DX,60
HSEWH1B: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
CMP CX,105
JNZ HSEWH1B

; WINDOW HORZ LINE2 (HOUSE)

MOV CX,65
MOV DX,70
HSEWH2: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
CMP CX,75
JNZ HSEWH2

MOV CX,95
MOV DX,70
HSEWH2B: 
MOV AH,0CH
MOV AL,07H
INT 10H
INC CX
CMP CX,105
JNZ HSEWH2B

;;WINDOWS FINISHED ;;

;;;;;;;;;;;;;;;;;;;;;;;;;;         HOUSE FINISHED        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




mov cx,260
mov dx,0   ;uper left
uperLT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
dec cx
inc dx
cmp cx,210
cmp dx,50
jnz uperLT

;connect;
mov cx,210
mov dx,50
conuperLT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
inc cx
cmp cx,220
jnz conuperLT
;connect;

mov cx,320    ;uper right
mov dx,10
uprRT: mov ah,0ch
mov al,0ch
int 10h
dec cx
inc dx
cmp cx,260
cmp dx,70
jnz uprRT
int 10h 
;upper  end


;connect;
mov cx,260
mov dx,70
conuperRT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
inc cx
cmp cx,270
jnz conuperRT
;connect;

;;middle1;;
mov cx,220
mov dx,50   ;mid1 left
mid1LT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
dec cx
inc dx
cmp cx,170
cmp dx,100
jnz mid1LT

;connect;
mov cx,170
mov dx,100
conmid1LT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
inc cx
cmp cx,180
jnz conmid1LT
;connect;

;
mov cx,270    ;mid1 right
mov dx,70
mid1RT:
 mov ah,0ch
mov al,0ch
int 10h
dec cx
inc dx
cmp cx,230
cmp dx,110
jnz mid1RT
int 10h
;;middle1;; 

;connect;
mov cx,230
mov dx,110
conmid1RT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
inc cx
cmp cx,240
jnz conmid1RT
;connect;



;;middle2;;
mov cx,180
mov dx,100   ;mid2 left
mid2LT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
dec cx
inc dx
cmp cx,120
cmp dx,150
jnz mid2LT

;connect;
mov cx,130
mov dx,150
conmid2LT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
inc cx
cmp cx,140
jnz conmid2LT
;connect;

mov cx,240    ;mid2 right
mov dx,110
mid2RT:
mov ah,0ch
mov al,0ch
int 10h
dec cx
inc dx
cmp cx,200
cmp dx,150
jnz mid2RT
int 10h
;;middle2;;

;mid end

;connect;
mov cx,200
mov dx,150
conmid2RT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
inc cx
cmp cx,210
jnz conmid2RT
;connect;


;;lower;;
mov cx,140
mov dx,150   ;low left
lowLT:
mov ah,0ch
mov al,0ch ;pixels=light red
int 10h
dec cx
inc dx
cmp cx,90
cmp dx,200
jnz lowLT

;
mov cx,210    ;low right
mov dx,150
lowRT:
mov ah,0ch
mov al,0ch
int 10h
dec cx
inc dx
cmp cx,160
cmp dx,200
jnz lowRT
int 10h

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TREE 1 START;;;;;;;;;;;;;;;;;;;;;
MOV CX,10
MOV DX,60
TRELTB: 
MOV AH,0CH
MOV AL,06H ;PIXELS=BROWN
INT 10H
INC CX
DEC DX
CMP CX,20
CMP DX,50
JNZ TRELTB

; RIGHT  BASE (TREE)
MOV CX,40
MOV DX,60
TRERTB: MOV AH,0CH
MOV AL,06H
INT 10H
DEC CX
DEC DX
CMP CX,30
CMP DX,50
JNZ TRERTB

; LEFT VERT (TREE)
MOV CX,20
MOV DX,30
TRELTV: 
MOV AH,0CH
MOV AL,06H
INT 10H
INC DX
CMP DX,50
JNZ TRELTV

; RIGHT  VERT (TREE)
MOV CX,30
MOV DX,30
TRERTV: 
MOV AH,0CH
MOV AL,06H
INT 10H
INC DX
CMP DX,50
JNZ TRERTV

; I LIKE PINE TREES
MOV DX,30
MOV BX,40
DRWTREE: 
MOV CX,50
SUB CX,BX ;KEEPS GREEN TREE SYMMETRICAL
GRTREE: 
MOV AH,0CH
MOV AL,02H ;PIXELS=GREEN
INT 10H
INC CX
CMP CX,BX
JNZ GRTREE
CMP BX,29  ;WHEN BX 29
JLE BREAK  ;LOOP EXITS
SUB DX,3   ; MOVES GREEN LINE UP
SUB BX,2  ;MAKES TREE NARROW ON EACH PASS
JMP DRWTREE
BREAK:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;TREEEE 1  DONE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TREE 2 START;;;;;;;;;;;;;;;;;;;;;
MOV CX,130
MOV DX,80
TRE2LTB: 
MOV AH,0CH
MOV AL,06H ;PIXELS=BROWN
INT 10H
INC CX
DEC DX
CMP CX,140
CMP DX,70
JNZ TRE2LTB

; RIGHT  BASE (TREE)
MOV CX,160
MOV DX,80
TRE2RTB: MOV AH,0CH
MOV AL,06H
INT 10H
DEC CX
DEC DX
CMP CX,150
CMP DX,70
JNZ TRE2RTB

; LEFT VERT (TREE)
MOV CX,140
MOV DX,70
TRE2LTV: 
MOV AH,0CH
MOV AL,06H
INT 10H
DEC DX
CMP DX,50
JNZ TRE2LTV

; RIGHT  VERT (TREE)
MOV CX,150
MOV DX,70
TRE2RTV: 
MOV AH,0CH
MOV AL,06H
INT 10H
DEC DX
CMP DX,50
JNZ TRE2RTV

;;;;;;;;
MOV DX,50
MOV BX,160
DRWTREE2: 
MOV CX,290
SUB CX,BX ;KEEPS GREEN TREE SYMMETRICAL
GRTREE2:
cmp bx,144
je BREAK2
MOV AH,0CH
MOV AL,02H ;PIXELS=GREEN
INT 10H
INC CX
CMP CX,BX

JNZ GRTREE2

CMP BX,144
JLE BREAK2  ;LOOP EXITS
je BREAK2

SUB DX,3   ; MOVES GREEN LINE UP
SUB BX,2  ;MAKES TREE NARROW ON EACH PASS
JMP DRWTREE2
BREAK2:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;TREEEE 2  DONE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    

    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;BOAT 1 START;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov cx,140
mov dx,170

DRAWBOATUL:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX 
CMP CX,170
JNZ DRAWBOATUL

mov cx,140
mov dx,171
DRAWBOATULSD:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX 
CMP CX,170
JNZ DRAWBOATULSD

mov cx,140
mov dx,170
DRAWBLT:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX
INC DX 
CMP CX,155
CMP DX,180
JNZ DRAWBLT

mov cx,139
mov dx,170
DRAWBLT1:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX
INC DX 
CMP CX,155
CMP DX,180
JNZ DRAWBLT1


mov cx,170
mov dx,170
DRAWBRT:
MOV AH,0CH
MOV AL,25
INT 10H
DEC CX
INC DX 
CMP CX,155
CMP DX,180
JNZ DRAWBRT

mov cx,169
mov dx,170
DRAWBRT1:
MOV AH,0CH
MOV AL,25
INT 10H
DEC CX
INC DX 
CMP CX,155
CMP DX,180
JNZ DRAWBRT1
 
mov cx,150
mov dx,180
DRAWBOATBOTT:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX 
CMP CX,160
JNZ DRAWBOATBOTT

mov cx,150
mov dx,179
DRAWBOATBOTT1:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX 
CMP CX,160
JNZ DRAWBOATBOTT1 


mov cx,150
mov dx,160
DRAWBOATSOI:
MOV AH,0CH
MOV AL,25
INT 10H
INC DX 
CMP DX,170
JNZ DRAWBOATSOI

mov cx,150
mov dx,160
DRAWBOATSOI1:
MOV AH,0CH
MOV AL,25
INT 10H
INC CX 
CMP CX,160
JNZ DRAWBOATSOI1


mov cx,160
mov dx,160
DRAWBOATSOI2:
MOV AH,0CH
MOV AL,25
INT 10H
INC DX 
CMP DX,170
JNZ DRAWBOATSOI2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;BOAT 1 END;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




