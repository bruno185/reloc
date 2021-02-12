*
ar      equ $FF58
stack   equ $100
prntx   equ $F944 
*
        org $4000
*
main    nop
        jsr ar
        tsx
        lda stack,x      ; octet faible 
        sta savfort
        dex
        lda stack,x
        sta savfaib
        ldx savfort
        jsr prntx
        ldx savfaib
        jsr prntx

        rts
savfort hex 00
savfaib hex 00