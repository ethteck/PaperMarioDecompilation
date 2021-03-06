.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80070AF0
/* 04BEF0 80070AF0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04BEF4 80070AF4 AFA40010 */  sw    $a0, 0x10($sp)
/* 04BEF8 80070AF8 AFA50014 */  sw    $a1, 0x14($sp)
/* 04BEFC 80070AFC AFA60018 */  sw    $a2, 0x18($sp)
/* 04BF00 80070B00 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04BF04 80070B04 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04BF08 80070B08 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04BF0C 80070B0C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04BF10 80070B10 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BF14 80070B14 0C016959 */  jal   play_effect
/* 04BF18 80070B18 24040031 */   addiu $a0, $zero, 0x31
/* 04BF1C 80070B1C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04BF20 80070B20 8FA50014 */  lw    $a1, 0x14($sp)
/* 04BF24 80070B24 8FA60018 */  lw    $a2, 0x18($sp)
/* 04BF28 80070B28 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04BF2C 80070B2C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04BF30 80070B30 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04BF34 80070B34 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04BF38 80070B38 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BF3C 80070B3C 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BF40 80070B40 3C018008 */  lui   $at, 0x8008
/* 04BF44 80070B44 8C21F6A8 */  lw    $at, -0x958($at)
/* 04BF48 80070B48 00200008 */  jr    $at
/* 04BF4C 80070B4C 00000000 */   nop   
