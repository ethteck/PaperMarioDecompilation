.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osEPiLinkHandle
/* 03C2C0 80060EC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03C2C4 80060EC4 AFB00010 */  sw    $s0, 0x10($sp)
/* 03C2C8 80060EC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03C2CC 80060ECC 0C01ACD8 */  jal   __osDisableInt
/* 03C2D0 80060ED0 00808021 */   addu  $s0, $a0, $zero
/* 03C2D4 80060ED4 3C038009 */  lui   $v1, 0x8009
/* 03C2D8 80060ED8 8C633D6C */  lw    $v1, 0x3d6c($v1)
/* 03C2DC 80060EDC 00402021 */  addu  $a0, $v0, $zero
/* 03C2E0 80060EE0 3C018009 */  lui   $at, 0x8009
/* 03C2E4 80060EE4 AC303D6C */  sw    $s0, 0x3d6c($at)
/* 03C2E8 80060EE8 0C01ACF4 */  jal   __osRestoreInt
/* 03C2EC 80060EEC AE030000 */   sw    $v1, ($s0)
/* 03C2F0 80060EF0 00001021 */  addu  $v0, $zero, $zero
/* 03C2F4 80060EF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03C2F8 80060EF8 8FB00010 */  lw    $s0, 0x10($sp)
/* 03C2FC 80060EFC 03E00008 */  jr    $ra
/* 03C300 80060F00 27BD0018 */   addiu $sp, $sp, 0x18

/* 03C304 80060F04 00000000 */  nop   
/* 03C308 80060F08 00000000 */  nop   
/* 03C30C 80060F0C 00000000 */  nop   


