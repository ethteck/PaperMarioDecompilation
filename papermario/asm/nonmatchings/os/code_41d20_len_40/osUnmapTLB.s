.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osUnmapTLB
/* 041D20 80066920 40085000 */  mfc0  $t0, $10
/* 041D24 80066924 40840000 */  mtc0  $a0, $0
/* 041D28 80066928 3C098000 */  lui   $t1, 0x8000
/* 041D2C 8006692C 40895000 */  mtc0  $t1, $10
/* 041D30 80066930 40801000 */  mtc0  $zero, $2
/* 041D34 80066934 40801800 */  mtc0  $zero, $3
/* 041D38 80066938 00000000 */  nop   
/* 041D3C 8006693C 42000002 */  tlbwi 
/* 041D40 80066940 00000000 */  nop   
/* 041D44 80066944 00000000 */  nop   
/* 041D48 80066948 00000000 */  nop   
/* 041D4C 8006694C 00000000 */  nop   
/* 041D50 80066950 40885000 */  mtc0  $t0, $10
/* 041D54 80066954 03E00008 */  jr    $ra
/* 041D58 80066958 00000000 */   nop   

/* 041D5C 8006695C 00000000 */  nop   


