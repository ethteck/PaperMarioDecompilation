.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osAfterPreNMI
/* 045A30 8006A630 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 045A34 8006A634 AFBF0010 */  sw    $ra, 0x10($sp)
/* 045A38 8006A638 0C01B1C0 */  jal   osSpSetPc
/* 045A3C 8006A63C 00002021 */   addu  $a0, $zero, $zero
/* 045A40 8006A640 8FBF0010 */  lw    $ra, 0x10($sp)
/* 045A44 8006A644 03E00008 */  jr    $ra
/* 045A48 8006A648 27BD0018 */   addiu $sp, $sp, 0x18

/* 045A4C 8006A64C 00000000 */  nop   


