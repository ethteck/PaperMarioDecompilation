.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osViGetCurrentFramebuffer
/* 041DB0 800669B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 041DB4 800669B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 041DB8 800669B8 0C01ACD8 */  jal   __osDisableInt
/* 041DBC 800669BC AFB00010 */   sw    $s0, 0x10($sp)
/* 041DC0 800669C0 3C038009 */  lui   $v1, 0x8009
/* 041DC4 800669C4 8C6359D0 */  lw    $v1, 0x59d0($v1)
/* 041DC8 800669C8 8C700004 */  lw    $s0, 4($v1)
/* 041DCC 800669CC 0C01ACF4 */  jal   __osRestoreInt
/* 041DD0 800669D0 00402021 */   addu  $a0, $v0, $zero
/* 041DD4 800669D4 02001021 */  addu  $v0, $s0, $zero
/* 041DD8 800669D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 041DDC 800669DC 8FB00010 */  lw    $s0, 0x10($sp)
/* 041DE0 800669E0 03E00008 */  jr    $ra
/* 041DE4 800669E4 27BD0018 */   addiu $sp, $sp, 0x18

/* 041DE8 800669E8 00000000 */  nop   
/* 041DEC 800669EC 00000000 */  nop   


