.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osDequeueThread
/* 041600 80066200 8C820000 */  lw    $v0, ($a0)
/* 041604 80066204 10400009 */  beqz  $v0, .L8006622C
/* 041608 80066208 00000000 */   nop   
.L8006620C:
/* 04160C 8006620C 54450004 */  bnel  $v0, $a1, .L80066220
/* 041610 80066210 00402021 */   addu  $a0, $v0, $zero
/* 041614 80066214 8C420000 */  lw    $v0, ($v0)
/* 041618 80066218 0801988B */  j     .L8006622C
/* 04161C 8006621C AC820000 */   sw    $v0, ($a0)

.L80066220:
/* 041620 80066220 8C420000 */  lw    $v0, ($v0)
/* 041624 80066224 1440FFF9 */  bnez  $v0, .L8006620C
/* 041628 80066228 00000000 */   nop   
.L8006622C:
/* 04162C 8006622C 03E00008 */  jr    $ra
/* 041630 80066230 00000000 */   nop   

/* 041634 80066234 00000000 */  nop   
/* 041638 80066238 00000000 */  nop   
/* 04163C 8006623C 00000000 */  nop   


