.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osCreateThread
/* 041260 80065E60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 041264 80065E64 AFB00010 */  sw    $s0, 0x10($sp)
/* 041268 80065E68 00808021 */  addu  $s0, $a0, $zero
/* 04126C 80065E6C 00E04821 */  addu  $t1, $a3, $zero
/* 041270 80065E70 000747C3 */  sra   $t0, $a3, 0x1f
/* 041274 80065E74 3C048007 */  lui   $a0, 0x8007
/* 041278 80065E78 2484B350 */  addiu $a0, $a0, -0x4cb0
/* 04127C 80065E7C 00801821 */  addu  $v1, $a0, $zero
/* 041280 80065E80 000417C3 */  sra   $v0, $a0, 0x1f
/* 041284 80065E84 8FA70028 */  lw    $a3, 0x28($sp)
/* 041288 80065E88 3C040100 */  lui   $a0, 0x100
/* 04128C 80065E8C 34840800 */  ori   $a0, $a0, 0x800
/* 041290 80065E90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 041294 80065E94 AE020100 */  sw    $v0, 0x100($s0)
/* 041298 80065E98 AE030104 */  sw    $v1, 0x104($s0)
/* 04129C 80065E9C 3402FF03 */  ori   $v0, $zero, 0xff03
/* 0412A0 80065EA0 AE020118 */  sw    $v0, 0x118($s0)
/* 0412A4 80065EA4 2402003F */  addiu $v0, $zero, 0x3f
/* 0412A8 80065EA8 AE020128 */  sw    $v0, 0x128($s0)
/* 0412AC 80065EAC 24020001 */  addiu $v0, $zero, 1
/* 0412B0 80065EB0 AE050014 */  sw    $a1, 0x14($s0)
/* 0412B4 80065EB4 AE000000 */  sw    $zero, ($s0)
/* 0412B8 80065EB8 AE000008 */  sw    $zero, 8($s0)
/* 0412BC 80065EBC AE06011C */  sw    $a2, 0x11c($s0)
/* 0412C0 80065EC0 AE080038 */  sw    $t0, 0x38($s0)
/* 0412C4 80065EC4 AE09003C */  sw    $t1, 0x3c($s0)
/* 0412C8 80065EC8 AE04012C */  sw    $a0, 0x12c($s0)
/* 0412CC 80065ECC AE000018 */  sw    $zero, 0x18($s0)
/* 0412D0 80065ED0 A6020010 */  sh    $v0, 0x10($s0)
/* 0412D4 80065ED4 A6000012 */  sh    $zero, 0x12($s0)
/* 0412D8 80065ED8 8FA2002C */  lw    $v0, 0x2c($sp)
/* 0412DC 80065EDC 00E05821 */  addu  $t3, $a3, $zero
/* 0412E0 80065EE0 000757C3 */  sra   $t2, $a3, 0x1f
/* 0412E4 80065EE4 AE020004 */  sw    $v0, 4($s0)
/* 0412E8 80065EE8 256BFFF0 */  addiu $t3, $t3, -0x10
/* 0412EC 80065EEC 2D62FFF0 */  sltiu $v0, $t3, -0x10
/* 0412F0 80065EF0 254AFFFF */  addiu $t2, $t2, -1
/* 0412F4 80065EF4 01425021 */  addu  $t2, $t2, $v0
/* 0412F8 80065EF8 AE0A00F0 */  sw    $t2, 0xf0($s0)
/* 0412FC 80065EFC 0C01ACD8 */  jal   __osDisableInt
/* 041300 80065F00 AE0B00F4 */   sw    $t3, 0xf4($s0)
/* 041304 80065F04 3C038009 */  lui   $v1, 0x8009
/* 041308 80065F08 8C63465C */  lw    $v1, 0x465c($v1)
/* 04130C 80065F0C 00402021 */  addu  $a0, $v0, $zero
/* 041310 80065F10 3C018009 */  lui   $at, 0x8009
/* 041314 80065F14 AC30465C */  sw    $s0, 0x465c($at)
/* 041318 80065F18 0C01ACF4 */  jal   __osRestoreInt
/* 04131C 80065F1C AE03000C */   sw    $v1, 0xc($s0)
/* 041320 80065F20 8FBF0014 */  lw    $ra, 0x14($sp)
/* 041324 80065F24 8FB00010 */  lw    $s0, 0x10($sp)
/* 041328 80065F28 03E00008 */  jr    $ra
/* 04132C 80065F2C 27BD0018 */   addiu $sp, $sp, 0x18


