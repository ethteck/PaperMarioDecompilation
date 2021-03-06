.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel fx_walk_large
/* 04AED0 8006FAD0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04AED4 8006FAD4 AFA40010 */  sw    $a0, 0x10($sp)
/* 04AED8 8006FAD8 AFA50014 */  sw    $a1, 0x14($sp)
/* 04AEDC 8006FADC AFA60018 */  sw    $a2, 0x18($sp)
/* 04AEE0 8006FAE0 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04AEE4 8006FAE4 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04AEE8 8006FAE8 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04AEEC 8006FAEC E7B00028 */  swc1  $f16, 0x28($sp)
/* 04AEF0 8006FAF0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04AEF4 8006FAF4 0C016959 */  jal   play_effect
/* 04AEF8 8006FAF8 24040006 */   addiu $a0, $zero, 6
/* 04AEFC 8006FAFC 8FA40010 */  lw    $a0, 0x10($sp)
/* 04AF00 8006FB00 8FA50014 */  lw    $a1, 0x14($sp)
/* 04AF04 8006FB04 8FA60018 */  lw    $a2, 0x18($sp)
/* 04AF08 8006FB08 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04AF0C 8006FB0C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04AF10 8006FB10 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04AF14 8006FB14 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04AF18 8006FB18 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04AF1C 8006FB1C 27BD0030 */  addiu $sp, $sp, 0x30
/* 04AF20 8006FB20 3C018008 */  lui   $at, 0x8008
/* 04AF24 8006FB24 8C21F2A0 */  lw    $at, -0xd60($at)
/* 04AF28 8006FB28 00200008 */  jr    $at
/* 04AF2C 8006FB2C 00000000 */   nop   
