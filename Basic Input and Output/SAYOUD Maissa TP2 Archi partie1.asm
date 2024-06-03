DATA SEGMENT
    
    octet db 65
    ;word dw 3233h 
    word dw 6162h
    
    chaine0 db "La valeur de OCTET est :",24h
    chaine1 db 0ah,0dh,"La valeur du premier octet de Word est :",24h 
    chaine2 db 0ah,0dh,"La valeur du second octet de WORD est :",24h

data ENDS    

CODE SEGMENT    
    
start:
    mov ax,DATA
    mov ds,ax
            
   ;afficher la chaine0        
    mov dx,offset chaine0
    mov ah,09h 
    int 21h   
    
    ;afficher la var octet
    mov dl, octet
    mov ah,02h
    int 21h
            
   ;afficher la chaine1
    lea dx, chaine1
    mov ah,09h
    int 21h
    
    ;afficher la var word
    mov bx,offset word
    mov dl,[bx] ;adressage base
    ;ou bien: mov dx,word
    mov ah,02h
    int 21h             
    
    ;afficher la chaine2            
    mov dx,offset chaine2 
    mov ah,09h
    int 21h
    
    ;mov bx,offset word
    ;mov dl,[bx+1] ;adressage base avec deplacement  
    mov dx,word
    mov dl, dh
    mov ah,02h
    int 21h
        
    ; wait for any key press:
    mov ah,4ch
    int 21h   
     
code ENDS    
    end start