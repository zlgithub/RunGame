TITLE    (.asm)
;Homework Assigment No. (Hw)
;Student ID:
;Program Descriptions:

INCLUDE Irvine32.inc


.data

blank BYTE ' ',0
blank2 BYTE '  ',0
star BYTE '☆',0
stone BYTE '■',0
coin BYTE 'C',0
block BYTE      '============================================================',0
blank12 BYTE '            ',0 

;--------------------------------------------------------------------------------------------------

underblock BYTE  '---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ',0
underblock2 BYTE '-       -       -       -       -       -       -       -       -       ',0
skyblock  BYTE   '---    ☆---    ☆---    ☆---    ☆---    ☆---    ☆---    ☆---    ☆',0
cloudblock1 BYTE '  __        __        __        __        __        __        __      ',0
cloudblock2 BYTE ' (  )_     (  )_     (  )_     (  )_     (  )_     (  )_     (  )_    ',0
cloudblock3 BYTE '(     )   (     )   (     )   (     )   (     )   (     )   (     )   ',0
cloudblock4 BYTE ' (___)     (___)     (___)     (___)     (___)     (___)     (___)    ',0
cloudblock  BYTE '                                                            ',0


landnumber DWORD 0
landnumber2 DWORD 0
skynumber DWORD 0
cloudnumber1 DWORD 0
cloudnumber2 DWORD 0
cloudnumber3 DWORD 0
cloudnumber4 DWORD 0


backgroundy DWORD ?
backgroundnumber DWORD ?
backgroundloopnumber DWORD ?
backgroundthing BYTE 100 DUP(?)

;--------------------------------------------------------------------------------------------------

man1   BYTE  '  ____  ',0
man2   BYTE  '(^o Wo) ',0
man3   BYTE  ' /| _|\ ',0
manL   BYTE  '  |  |  ',0

manL1  BYTE  '  |     ',0
manL2  BYTE  '     |  ',0
LEGnumber DWORD 1

man3J  BYTE  ' /| _|/ ',0
manLJ  BYTE  '  |  ˋ ',0
manblank BYTE'        ',0

mans1   BYTE '  ____  ',0
mans2   BYTE '(^o Wo)/',0
mans3   BYTE '/ \  ˋ ',0

mandoing DWORD 1

many DWORD 15
manx DWORD 5

slidenumber DWORD 0

;-----------------------------------------------------------------------------------------------------

thingsdelay DWORD 1
stonelocation DWORD 10 DUP(0)
coinlocation DWORD 20 DUP(0)
coinpoint DWORD 0
cointotal BYTE 'COINS:',0
skystonelocation DWORD 10 DUP(0)

;--------------------------------------------------------------------------------------------------

youdie BYTE '你死了',0
restartr BYTE'按下R重玩',0
restartq BYTE '按下Q退出',0

;--------------------------------------------------------------------------------------------------

nwp byte "00",0ah,0dh,0
nnp byte "0",0ah,0dh,0
nsap byte "<PRESS    ANY    Y    TO    START>",0ah,0dh,0
nsnp byte "                                                                   ",0ah,0dh,0
speed DWORD 10

;--------------------------------------------------------------------------------------------------

num_0_1 byte " 000  ",0
num_0_2 byte "0  00 ",0
num_0_3 byte "0 0 0 ",0
num_0_4 byte "00  0 ",0
num_0_5 byte " 000  ",0

num_1_1 byte " 11  ",0
num_1_2 byte "111  ",0
num_1_3 byte " 11  ",0
num_1_4 byte " 11  ",0
num_1_5 byte "11l1 ",0

num_2_1 byte " 22  ",0
num_2_2 byte "2  2 ",0
num_2_3 byte "  2  ",0
num_2_4 byte " 2   ",0
num_2_5 byte "2222 ",0

num_3_1 byte "333  ",0
num_3_2 byte "   3 ",0
num_3_3 byte "333  ",0
num_3_4 byte "   3 ",0
num_3_5 byte "333  ",0

num_4_1 byte "4  4 ",0
num_4_2 byte "4  4 ",0
num_4_3 byte "4444 ",0
num_4_4 byte "   4 ",0
num_4_5 byte "   4 ",0

num_5_1 byte "5555 ",0
num_5_2 byte "5    ",0
num_5_3 byte "555  ",0
num_5_4 byte "   5 ",0
num_5_5 byte "555  ",0

num_6_1 byte "  6  ",0
num_6_2 byte " 6   ",0
num_6_3 byte "6666 ",0
num_6_4 byte "6   6",0
num_6_5 byte " 666 ",0

num_7_1 byte "77777",0
num_7_2 byte "   7 ",0
num_7_3 byte "  7  ",0
num_7_4 byte "  7  ",0
num_7_5 byte "  7  ",0

num_8_1 byte " 888 ",0
num_8_2 byte "8   8",0
num_8_3 byte " 888 ",0
num_8_4 byte "8   8",0
num_8_5 byte " 888 ",0

num_9_1 byte " 999 ",0
num_9_2 byte "9   9",0
num_9_3 byte " 9999",0
num_9_4 byte "   9 ",0
num_9_5 byte "  9  ",0

numberones DWORD 0
numbertens DWORD 0
;--------------------------------------------------------------------------------------------------


;===================================================================================================
;===================================================================================================


.code
;----------------------------

printstar PROC
mov edx,OFFSET star
call WriteString
ret
printstar ENDP

;----------------------------

printblank PROC
mov edx,OFFSET blank
call WriteString
ret
printblank ENDP

;----------------------------

printstone PROC
mov edx,OFFSET stone
call WriteString
ret
printstone ENDP

;----------------------------

backgroundrunning PROC

mov edx,backgroundy
shl edx,8
add edx,0
call gotoxy
cmp backgroundnumber,1
je backgroundadd1
cmp backgroundnumber,2
je backgroundadd2
cmp backgroundnumber,3
je backgroundadd3
cmp backgroundnumber,4
je backgroundadd4
cmp backgroundnumber,5
je backgroundadd5
cmp backgroundnumber,6
je backgroundadd6
cmp backgroundnumber,7
je backgroundadd7
cmp backgroundnumber,8
je backgroundadd8
cmp backgroundnumber,9
je backgroundadd9
cmp backgroundnumber,10
je backgroundadd10
mov edx,OFFSET backgroundthing
call WriteString
jmp backgroundrun

backgroundadd1:
mov edx,OFFSET [backgroundthing+1]
call WriteString
jmp backgroundrun

backgroundadd2:
mov edx,OFFSET [backgroundthing+2]
call WriteString
jmp backgroundrun

backgroundadd3:
mov edx,OFFSET [backgroundthing+3]
call WriteString
jmp backgroundrun

backgroundadd4:
mov edx,OFFSET [backgroundthing+4]
call WriteString
jmp backgroundrun

backgroundadd5:
mov edx,OFFSET [backgroundthing+5]
call WriteString
jmp backgroundrun

backgroundadd6:
mov edx,OFFSET [backgroundthing+6]
call WriteString
jmp backgroundrun

backgroundadd7:
mov edx,OFFSET [backgroundthing+7]
call WriteString
jmp backgroundrun

backgroundadd8:
mov edx,OFFSET [backgroundthing+8]
call WriteString
jmp backgroundrun

backgroundadd9:
mov edx,OFFSET [backgroundthing+9]
call WriteString
jmp backgroundrun

backgroundadd10:
mov edx,OFFSET [backgroundthing+10]
call WriteString
jmp backgroundrun

backgroundrun:
mov eax,7+(black*16)
call SetTextColor
mov edx,backgroundy
shl edx,8
add edx,60
call gotoxy
mov edx,OFFSET blank12
call WriteString

mov eax,backgroundloopnumber
cmp backgroundnumber,eax
je returnto0
add backgroundnumber,1
jmp endbackrunning

returnto0:
mov backgroundnumber,0
jmp endbackrunning

endbackrunning:

ret
backgroundrunning ENDP

;===========================================================================
;===========================================================================
statrpage PROC

call Clrscr
mov dh,0
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,5
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,7
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,8
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,7
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,5
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,3
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,5
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,7
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,9
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;-------------------------------------------
mov dh,0
mov dl,11
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,12
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,12
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,12
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,12
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,13
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,14
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,16
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,17
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,18
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,18
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,18
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,18
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,19
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;-------------------------------------------
mov dh,5
mov dl,21
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,24
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,25
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,26
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,27
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,29
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;------------------------------------------------
mov dh,5
mov dl,31
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,32
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,32
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,32
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,32
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,32
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,32
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,34
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,35
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,36
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,37
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,38
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,38
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,38
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,38
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,38
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,38
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,39
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;-------------------------------------------
mov dh,0
mov dl,42
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,46
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,42
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,46
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;-------------------------------------------
mov dh,5
mov dl,49
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,50
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,50
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,50
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,50
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,50
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,50
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,52
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,53
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,54
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,55
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,56
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,56
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,56
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,56
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,56
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,56
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,57
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;-------------------------------------------
mov dh,1
mov dl,66
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,64
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,0
mov dl,62
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,1
mov dl,60
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,2
mov dl,60
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,60
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,60
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,62
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,5
mov dl,64
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,4
mov dl,66
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,66
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,3
mov dl,64
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;-------------------------------------------DDDD
mov dh,9
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,10
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,11
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,13
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,22
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,24
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,26
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,13
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,11
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,10
mov dl,28
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,9
mov dl,26
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,9
mov dl,24
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay

;--------------------------------------------OOOO
mov dh,9
mov dl,33
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,9
mov dl,35
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,10
mov dl,37
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,11
mov dl,37
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,37
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,13
mov dl,37
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,35
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,33
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,13
mov dl,31
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,31
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,11
mov dl,31
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,10
mov dl,31
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
;--------------------------------------------GGGG
mov dh,10
mov dl,46
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,9
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,9
mov dl,42
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,10
mov dl,40
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,11
mov dl,40
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,40
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,13
mov dl,40
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,42
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,14
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,13
mov dl,46
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,46
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
mov dh,12
mov dl,44
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nwp
call writeString
mov eax,speed
call Delay
jmp odd
;--------------------------------------------
odd:
mov dh,7
mov dl,18
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nsap 
call writeString
mov eax,100
call Delay
mov dh,7
mov dl,18
call gotoxy
mov   eax , white
call    SetTextColor
mov edx,OFFSET nsnp 
call writeString
mov eax,100
call Delay
call ReadKey
cmp al,'y'
je endstatrpage
jmp odd


endstatrpage:

ret
statrpage  ENDP

;===========================================================================
getramdomcolor PROC

call randomize
mov eax,15
call RandomRange
add eax,1
call SetTextColor

ret
getramdomcolor ENDP

;---------------------------------------------------------------------------
printcoin PROC
cmp numberones,10
je subnumberones
jmp ones

subnumberones:
mov numberones,0
add numbertens,1
jmp ones

ones:
mov ebx,66
mov eax,numberones
call printnumber 
tens:
mov ebx,60
mov eax,numbertens
call printnumber 

ret
printcoin ENDP

;---------------------------------------------------------------------------
printnumber PROC

cmp eax,0
je N0
cmp eax,1
je N1
cmp eax,2
je N2
cmp eax,3
je N3
cmp eax,4
je N4
cmp eax,5
je N5
cmp eax,6
je N6
cmp eax,7
je N7
cmp eax,8
je N8
cmp eax,9
je N9


N0:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_0_1
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_0_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_0_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_0_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_0_5 
call WriteString
jmp endprintnumber

N1:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_1_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_1_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_1_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_1_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_1_5 
call WriteString
jmp endprintnumber

N2:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_2_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_2_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_2_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_2_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_2_5 
call WriteString
jmp endprintnumber

N3:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_3_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_3_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_3_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_3_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_3_5 
call WriteString
jmp endprintnumber

N4:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_4_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_4_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_4_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_4_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_4_5 
call WriteString
jmp endprintnumber

N5:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_5_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_5_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_5_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_5_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_5_5 
call WriteString
jmp endprintnumber

N6:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_6_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_6_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_6_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_6_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_6_5 
call WriteString
jmp endprintnumber

N7:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_7_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_7_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_7_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_7_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_7_5 
call WriteString
jmp endprintnumber

N8:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_8_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_8_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_8_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_8_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_8_5 
call WriteString
jmp endprintnumber

N9:
mov edx,13
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_9_1 
call WriteString
mov edx,14
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_9_2 
call WriteString
mov edx,15
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_9_3 
call WriteString
mov edx,16
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_9_4 
call WriteString
mov edx,17
shl edx,8
add edx,ebx
call gotoxy
mov edx,OFFSET num_9_5 
call WriteString
jmp endprintnumber


endprintnumber:

ret
printnumber ENDP
;===========================================================================
;===========================================================================


main PROC

call Clrscr
call statrpage

start:
call Clrscr

mov eax,black+(10*16)
call SetTextColor

mov edx,19
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET block 
call WriteString
call Crlf
mov edx,OFFSET underblock 
call WriteString

mov eax,7+(black*16)
call SetTextColor
mov edx,20
shl edx,8
add edx,60
call gotoxy
mov edx,OFFSET blank12
call WriteString


;============================================================================
running:


;--------------------------------------------------------
randomthings:

add thingsdelay,1
cmp thingsdelay,15
jb  coinsummon

call randomize
mov eax,100
call RandomRange


cmp eax,10
jb stonesummon
cmp eax,20
jb skystonesummon


jmp coinsummon

;-----------------------------------------------------

stonesummon:
mov thingsdelay,1

mov ecx,9
mov eax,36
movstonelocation:
sub eax,4
mov ebx,[stonelocation+eax]
add eax,4
mov [stonelocation+eax],ebx

sub eax,4
loop movstonelocation

mov stonelocation,59
jmp coinsummon

;-----------------------------------------------------

skystonesummon:
mov thingsdelay,1

mov ecx,9
mov eax,36
movskystonelocation:
sub eax,4
mov ebx,[skystonelocation+eax]
add eax,4
mov [skystonelocation+eax],ebx

sub eax,4
loop movskystonelocation

mov skystonelocation,59
jmp coinsummon

;----------------------------------------------------

coinsummon:

call randomize
mov eax,60
call RandomRange

cmp eax,2
ja stonerun

mov ecx,19
mov eax,76
movcoinlocation:
sub eax,4
mov ebx,[coinlocation+eax]
add eax,4
mov [coinlocation+eax],ebx

sub eax,4
loop movcoinlocation

mov coinlocation,59

jmp stonerun
;====================================================
stonerun:

mov ecx,10
mov eax,0

stonerunning:
mov edx,18
shl edx,8
add edx,[stonelocation+eax]
call gotoxy
mov edx,OFFSET blank
call WriteString

cmp [stonelocation+eax],0
ja substone
jmp nextstone

substone:
sub [stonelocation+eax],1
jmp nextstone

nextstone:
cmp [stonelocation+eax],0
je stoneblank
mov edx,18
shl edx,8
add edx,[stonelocation+eax]
call gotoxy
mov edx,OFFSET stone
call WriteString
add eax,4
loop stonerunning

stoneblank:
mov edx,18
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET blank2
call WriteString

cmp mandoing,1
ja skystonerun

mov ecx,10
mov eax,0
hitstone:
cmp [stonelocation+eax],7
je realend
cmp [stonelocation+eax],8
je realend
cmp [stonelocation+eax],9
je realend
cmp [stonelocation+eax],10
je realend
add eax,4
loop hitstone


jmp skystonerun

;====================================================
skystonerun:

mov ecx,10
mov eax,0

skystonerunning:
mov edx,15
shl edx,8
add edx,[skystonelocation+eax]
call gotoxy
mov edx,OFFSET blank
call WriteString

cmp [skystonelocation+eax],0
ja skysubstone
jmp skynextstone

skysubstone:
sub [skystonelocation+eax],1
jmp skynextstone

skynextstone:
cmp [skystonelocation+eax],0
je skystoneblank
mov edx,15
shl edx,8
add edx,[skystonelocation+eax]
call gotoxy
mov edx,OFFSET stone
call WriteString
add eax,4
loop skystonerunning

skystoneblank:
mov edx,15
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET blank2
call WriteString

cmp mandoing,0
ja canskyhitstone
je coinrun


canskyhitstone:
cmp many,12
jb coinrun

mov ecx,10
mov eax,0
skyhitstone:
cmp [skystonelocation+eax],7
je realend
cmp [skystonelocation+eax],8
je realend
cmp [skystonelocation+eax],9
je realend
cmp [skystonelocation+eax],10
je realend
add eax,4
loop skyhitstone


jmp coinrun



;====================================================
coinrun:

mov eax,yellow+(black*16)
call SetTextColor

mov ecx,20
mov eax,0

coinrunning:
mov edx,10
shl edx,8
add edx,[coinlocation+eax]
call gotoxy
mov edx,OFFSET blank
call WriteString

cmp [coinlocation+eax],0
ja subcoin
jmp nextcoin

subcoin:
sub [coinlocation+eax],1
jmp nextcoin

nextcoin:
cmp [coinlocation+eax],0
je coinblank
mov edx,10
shl edx,8
add edx,[coinlocation+eax]
call gotoxy
mov edx,OFFSET coin
call WriteString
add eax,4
loop coinrunning

coinblank:
mov edx,10
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET blank2
call WriteString
sub ecx,1
add eax,4
cmp ecx,0
ja coinrunning

cmp many,10
ja endcoinrun

mov ecx,20
mov eax,0
hitcoin:
cmp [coinlocation+eax],7
je getcoin
cmp [coinlocation+eax],8
je getcoin
cmp [coinlocation+eax],9
je getcoin
cmp [coinlocation+eax],10
je getcoin
add eax,4
loop hitcoin
jmp endcoinrun

getcoin:
mov edx,10
shl edx,8
add edx,[coinlocation+eax]
call gotoxy
mov edx,OFFSET blank
call WriteString

add coinpoint,1
add numberones,1
mov [coinlocation+eax],0

sub ecx,1
add eax,4
cmp ecx,0
je endcoinrun
jmp hitcoin


endcoinrun:

mov eax,7+(black*16)
call SetTextColor

jmp delaytime

;====================================================

delaytime:

call getramdomcolor
mov edx,12
shl edx,8
add edx,60
call gotoxy
mov edx,OFFSET cointotal
call WriteString
mov eax,coinpoint
call WriteDec
call printcoin
mov eax,7+(black*16)
call SetTextColor

cmp mandoing,0
ja readkeyin

add slidenumber,1
cmp slidenumber,10
je slidetorun
jmp readkeyin

slidetorun:
mov mandoing,1
mov slidenumber,0
jmp readkeyin

;----------------------------------

readkeyin:

mov eax,75
call Delay
call Readkey
cmp al,'q'
je closegame
cmp al,'r'
je clearall

cmp al,'w'
je manjumping

cmp mandoing,2
jb canslide
jmp man

canslide:
cmp al,'s'
je mansliding

jmp man


manjumping:
mov slidenumber,0
add mandoing,2
jmp man

mansliding:
mov mandoing,0
jmp man

;====================================================
man:
cmp mandoing,1
ja manjump
je manrun
jmp manslide
;---------------------------------------------

manrun:
mov edx,15
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET man1
call WriteString

mov edx,16
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET man2
call WriteString

mov edx,17
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET man3
call WriteString

mov edx,18
shl edx,8
add edx,5
call gotoxy
cmp LEGnumber,2
je changleg
mov edx,OFFSET manL1
call WriteString
add LEGnumber,1
jmp endmanrun
changleg:
mov edx,OFFSET manL2
call WriteString
mov LEGnumber,1
jmp endmanrun

endmanrun:
jmp background
;-----------------------------------------------

manjump:
cmp mandoing,50
ja manfall

sub many,1
cmp many,9
jb tofall
jmp manjump2

tofall:
add mandoing,50
jmp manjump2

manjump2:
mov edx,many
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET man1
call WriteString

mov edx,many
add edx,1
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET man2
call WriteString

mov edx,many
add edx,2
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET man3J
call WriteString

mov edx,many
add edx,3
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET manLJ
call WriteString

mov edx,many
add edx,4
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET manblank
call WriteString

jmp background

;---------------------------------------------------
manfall:

add many,1

mov edx,many
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET man1
call WriteString

mov edx,many
add edx,1
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET man2
call WriteString

mov edx,many
add edx,2
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET man3J
call WriteString

mov edx,many
add edx,3
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET manLJ
call WriteString

mov edx,many
sub edx,1
shl edx,8
add edx,manx
call gotoxy
mov edx,OFFSET manblank
call WriteString

cmp many,15
je torun
jmp background

torun:
mov mandoing,1
jmp background

;---------------------------------------------------------
manslide:

mov edx,16
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET mans1
call WriteString

mov edx,17
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET mans2
call WriteString

mov edx,18
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET mans3
call WriteString

mov edx,15
shl edx,8
add edx,5
call gotoxy
mov edx,OFFSET manblank
call WriteString


jmp background

;================================================
;================================================
background:


landrun:
mov eax,7+(9*16)
call SetTextColor
mov backgroundy,20                  ;
mov eax,landnumber                  ;
mov backgroundnumber,eax
mov backgroundloopnumber,5         ;
mov esi,0
mov ecx,SIZEOF underblock            ;
movland:
mov al,underblock[esi]             
mov backgroundthing[esi],al
inc esi
loop movland
call backgroundrunning
mov eax,backgroundnumber            ;
mov landnumber,eax

;--------------------------------------------------

landrun2:
mov eax,7+(9*16)
call SetTextColor
mov backgroundy,21                  ;
mov eax,landnumber2                  ;
mov backgroundnumber,eax
mov backgroundloopnumber,7         ;
mov esi,0
mov ecx,SIZEOF underblock2            ;
movland2:
mov al,underblock2[esi]             
mov backgroundthing[esi],al
inc esi
loop movland2
call backgroundrunning
mov eax,backgroundnumber            ;
mov landnumber2,eax

;--------------------------------------------------

skyrun:

mov eax,yellow+(black*16)
call SetTextColor

mov backgroundy,0                   ;
mov eax,skynumber                   ;
mov backgroundnumber,eax
mov backgroundloopnumber,7        ;
mov esi,0
mov ecx,SIZEOF skyblock           ;
movsky:
mov al,skyblock[esi]             
mov backgroundthing[esi],al
inc esi
loop movsky
call backgroundrunning
mov eax,backgroundnumber            ;
mov skynumber,eax

mov eax,7+(black*16)
call SetTextColor


;--------------------------------------------------
cloudall:
mov eax,black+(11*16)
call SetTextColor

mov edx,2
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET cloudblock
call WriteString
mov edx,3
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET cloudblock
call WriteString

;--------------------------------------------------

cloudrun1:
mov eax,7+(11*16)
call SetTextColor

mov backgroundy,4                  ;
mov eax,cloudnumber1                  ;
mov backgroundnumber,eax
mov backgroundloopnumber,9         ;
mov esi,0
mov ecx,SIZEOF cloudblock1            ;
movcloud1:
mov al,cloudblock1[esi]             
mov backgroundthing[esi],al
inc esi
loop movcloud1
call backgroundrunning
mov eax,backgroundnumber            ;
mov cloudnumber1,eax

;--------------------------------------------------

cloudrun2:
mov eax,7+(11*16)
call SetTextColor

mov backgroundy,5                  ;
mov eax,cloudnumber2                  ;
mov backgroundnumber,eax
mov backgroundloopnumber,9         ;
mov esi,0
mov ecx,SIZEOF cloudblock2            ;
movcloud2:
mov al,cloudblock2[esi]             
mov backgroundthing[esi],al
inc esi
loop movcloud2
call backgroundrunning
mov eax,backgroundnumber            ;
mov cloudnumber2,eax

;--------------------------------------------------

cloudrun3:
mov eax,7+(11*16)
call SetTextColor

mov backgroundy,6                  ;
mov eax,cloudnumber3                  ;
mov backgroundnumber,eax
mov backgroundloopnumber,9         ;
mov esi,0
mov ecx,SIZEOF cloudblock3            ;
movcloud3:
mov al,cloudblock3[esi]             
mov backgroundthing[esi],al
inc esi
loop movcloud3
call backgroundrunning
mov eax,backgroundnumber            ;
mov cloudnumber3,eax

;--------------------------------------------------

cloudrun4:
mov eax,7+(11*16)
call SetTextColor

mov backgroundy,7                  ;
mov eax,cloudnumber4                  ;
mov backgroundnumber,eax
mov backgroundloopnumber,9         ;
mov esi,0
mov ecx,SIZEOF cloudblock4            ;
movcloud4:
mov al,cloudblock4[esi]             
mov backgroundthing[esi],al
inc esi
loop movcloud4
call backgroundrunning
mov eax,backgroundnumber            ;
mov cloudnumber4,eax

;--------------------------------------------------

jmp running

;=====================================================================
;=====================================================================

realend:
mov edx,12
shl edx,8
add edx,28
call gotoxy
mov edx,OFFSET youdie
call WriteString
mov edx,13
shl edx,8
add edx,27
call gotoxy
mov edx,OFFSET restartr
call WriteString
mov edx,14
shl edx,8
add edx,27
call gotoxy
mov edx,OFFSET restartq
call WriteString


waitr:
call Readchar
cmp al,'r'
je clearall
cmp al,'q'
je closegame
jmp waitr

;-------------------------------------------------

clearall:

call Clrscr

mov mandoing,1
mov slidenumber,0
mov many,15
mov coinpoint,0
mov edx,19
shl edx,8
add edx,0
call gotoxy
mov edx,OFFSET block 
call WriteString
call Crlf

mov ecx,10
mov eax,0
clearstones:
mov [stonelocation+eax],0
mov [skystonelocation+eax],0
add eax,4
loop clearstones

mov ecx,20
mov eax,0
clearcoins:
mov [coinlocation+eax],0
add eax,4
loop clearcoins

mov numberones,0
mov numbertens,0

jmp start

;=================================================================
closegame:
mov edx,21
shl edx,8
add edx,0
call gotoxy

	exit
main ENDP
END main

