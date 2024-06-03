DATA Segment
            
    TAB db 10 dup (0)  
    n equ 10  ;taille tableau (facultative)
    message db "vous pouvez commencer la saisie des valeurs de TAB ",0ah, 0dh,24h
    
DATA Ends

     
     
CODE Segment
    begin:
                  
    mov ax,DATA
    mov ds, ax                  
                         
 ;_____________________________________________________________
           
  ;0/ Affichage du message:
    
    mov ah,09h
    lea dx,message
    int 21h
           
           
  ;1/ Initialisation du TAB:    
    
    mov BX,0  ;utiliser Bx comme indice du TAB
    
    BoucleLecture:                       
    
        ;Lire le TAB octet par octet a partir du clavier et a l'aide de
        ;  la fonction 01h de l'interruption 21h:
        mov ah,01h
        int 21h
        
        ;Recuperer le caractere lu du registre Al et
        ;  le stocker dans TAB:
        mov TAB[Bx],Al
        
        inc Bx
        cmp Bx,n
    
    JL BoucleLecture                     
         
         
         
  ;2/ Afficher le contenu du TAB octet par octet
  
    ;faire un petit saut de ligne sans retour au chariot pour pouvoir distinguer les elements afficher:
    mov dl,0ah
    mov ah,02h
    int 21h 
    
    
    mov BX,0  ;utiliser Bx comme etant un indice du TAB
    
    afficher:  
        
        ;Afficher un octet du TAB :
        mov ah, 02h                
        mov dl, TAB[bx]
        int 21h
        
        inc BX
        CMP BX,10
    JL afficher                
      
 ;_____________________________________________________________       
    mov ah,04ch
    int 21h
    
CODE Ends 

    end begin
                    
                         