.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel update_shadows
/* 0A6198 8010FA98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A619C 8010FA9C 3C028015 */  lui   $v0, 0x8015
/* 0A61A0 8010FAA0 24421324 */  addiu $v0, $v0, 0x1324
/* 0A61A4 8010FAA4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0A61A8 8010FAA8 0000882D */  daddu $s1, $zero, $zero
/* 0A61AC 8010FAAC AFB20018 */  sw    $s2, 0x18($sp)
/* 0A61B0 8010FAB0 0040902D */  daddu $s2, $v0, $zero
/* 0A61B4 8010FAB4 AFB40020 */  sw    $s4, 0x20($sp)
/* 0A61B8 8010FAB8 3C144000 */  lui   $s4, 0x4000
/* 0A61BC 8010FABC AFB3001C */  sw    $s3, 0x1c($sp)
/* 0A61C0 8010FAC0 3C13800B */  lui   $s3, 0x800b
/* 0A61C4 8010FAC4 26731D80 */  addiu $s3, $s3, 0x1d80
/* 0A61C8 8010FAC8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A61CC 8010FACC AFB00010 */  sw    $s0, 0x10($sp)
/* 0A61D0 8010FAD0 AC400000 */  sw    $zero, ($v0)
.L8010FAD4:
/* 0A61D4 8010FAD4 0C044181 */  jal   get_shadow_by_index
/* 0A61D8 8010FAD8 0220202D */   daddu $a0, $s1, $zero
/* 0A61DC 8010FADC 0040802D */  daddu $s0, $v0, $zero
/* 0A61E0 8010FAE0 5200002C */  beql  $s0, $zero, .L8010FB94
/* 0A61E4 8010FAE4 26310001 */   addiu $s1, $s1, 1
/* 0A61E8 8010FAE8 8E420000 */  lw    $v0, ($s2)
/* 0A61EC 8010FAEC 8E030000 */  lw    $v1, ($s0)
/* 0A61F0 8010FAF0 24420001 */  addiu $v0, $v0, 1
/* 0A61F4 8010FAF4 AE420000 */  sw    $v0, ($s2)
/* 0A61F8 8010FAF8 00741024 */  and   $v0, $v1, $s4
/* 0A61FC 8010FAFC 54400025 */  bnel  $v0, $zero, .L8010FB94
/* 0A6200 8010FB00 26310001 */   addiu $s1, $s1, 1
/* 0A6204 8010FB04 30622000 */  andi  $v0, $v1, 0x2000
/* 0A6208 8010FB08 1040000E */  beqz  $v0, .L8010FB44
/* 0A620C 8010FB0C 00000000 */   nop   
/* 0A6210 8010FB10 3C038007 */  lui   $v1, 0x8007
/* 0A6214 8010FB14 8C637410 */  lw    $v1, 0x7410($v1)
/* 0A6218 8010FB18 00031080 */  sll   $v0, $v1, 2
/* 0A621C 8010FB1C 00431021 */  addu  $v0, $v0, $v1
/* 0A6220 8010FB20 00021080 */  sll   $v0, $v0, 2
/* 0A6224 8010FB24 00431023 */  subu  $v0, $v0, $v1
/* 0A6228 8010FB28 000218C0 */  sll   $v1, $v0, 3
/* 0A622C 8010FB2C 00431021 */  addu  $v0, $v0, $v1
/* 0A6230 8010FB30 000210C0 */  sll   $v0, $v0, 3
/* 0A6234 8010FB34 00531021 */  addu  $v0, $v0, $s3
/* 0A6238 8010FB38 C440006C */  lwc1  $f0, 0x6c($v0)
/* 0A623C 8010FB3C 46000007 */  neg.s $f0, $f0
/* 0A6240 8010FB40 E600002C */  swc1  $f0, 0x2c($s0)
.L8010FB44:
/* 0A6244 8010FB44 0C0440DD */  jal   func_80110374
/* 0A6248 8010FB48 0200202D */   daddu $a0, $s0, $zero
/* 0A624C 8010FB4C 8E020000 */  lw    $v0, ($s0)
/* 0A6250 8010FB50 30420008 */  andi  $v0, $v0, 8
/* 0A6254 8010FB54 10400005 */  beqz  $v0, .L8010FB6C
/* 0A6258 8010FB58 00000000 */   nop   
/* 0A625C 8010FB5C 0C047A2F */  jal   func_8011E8BC
/* 0A6260 8010FB60 86040008 */   lh    $a0, 8($s0)
/* 0A6264 8010FB64 08043EDD */  j     .L8010FB74
/* 0A6268 8010FB68 00000000 */   nop   

.L8010FB6C:
/* 0A626C 8010FB6C 0C0483C1 */  jal   func_80120F04
/* 0A6270 8010FB70 86040008 */   lh    $a0, 8($s0)
.L8010FB74:
/* 0A6274 8010FB74 8E020000 */  lw    $v0, ($s0)
/* 0A6278 8010FB78 3C032000 */  lui   $v1, 0x2000
/* 0A627C 8010FB7C 00431024 */  and   $v0, $v0, $v1
/* 0A6280 8010FB80 10400004 */  beqz  $v0, .L8010FB94
/* 0A6284 8010FB84 26310001 */   addiu $s1, $s1, 1
/* 0A6288 8010FB88 92040004 */  lbu   $a0, 4($s0)
/* 0A628C 8010FB8C 0C044217 */  jal   func_8011085C
/* 0A6290 8010FB90 00000000 */   nop   
.L8010FB94:
/* 0A6294 8010FB94 2A22003C */  slti  $v0, $s1, 0x3c
/* 0A6298 8010FB98 1440FFCE */  bnez  $v0, .L8010FAD4
/* 0A629C 8010FB9C 00000000 */   nop   
/* 0A62A0 8010FBA0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A62A4 8010FBA4 8FB40020 */  lw    $s4, 0x20($sp)
/* 0A62A8 8010FBA8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0A62AC 8010FBAC 8FB20018 */  lw    $s2, 0x18($sp)
/* 0A62B0 8010FBB0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0A62B4 8010FBB4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0A62B8 8010FBB8 03E00008 */  jr    $ra
/* 0A62BC 8010FBBC 27BD0028 */   addiu $sp, $sp, 0x28

