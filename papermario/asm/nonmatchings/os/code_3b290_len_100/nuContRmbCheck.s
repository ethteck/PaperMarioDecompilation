.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel nuContRmbCheck
/* 03B2F0 8005FEF0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03B2F4 8005FEF4 AFB00020 */  sw    $s0, 0x20($sp)
/* 03B2F8 8005FEF8 0080802D */  daddu $s0, $a0, $zero
/* 03B2FC 8005FEFC 24040301 */  addiu $a0, $zero, 0x301
/* 03B300 8005FF00 27A50010 */  addiu $a1, $sp, 0x10
/* 03B304 8005FF04 AFBF0028 */  sw    $ra, 0x28($sp)
/* 03B308 8005FF08 AFB10024 */  sw    $s1, 0x24($sp)
/* 03B30C 8005FF0C 0C00B3CA */  jal   nuSiSendMesg
/* 03B310 8005FF10 A3B00010 */   sb    $s0, 0x10($sp)
/* 03B314 8005FF14 24040001 */  addiu $a0, $zero, 1
/* 03B318 8005FF18 0C018250 */  jal   osSetIntMask
/* 03B31C 8005FF1C 0040882D */   daddu $s1, $v0, $zero
/* 03B320 8005FF20 1620000A */  bnez  $s1, .L8005FF4C
/* 03B324 8005FF24 0040202D */   daddu $a0, $v0, $zero
/* 03B328 8005FF28 00101080 */  sll   $v0, $s0, 2
/* 03B32C 8005FF2C 00501021 */  addu  $v0, $v0, $s0
/* 03B330 8005FF30 00021040 */  sll   $v0, $v0, 1
/* 03B334 8005FF34 24030002 */  addiu $v1, $zero, 2
/* 03B338 8005FF38 3C01800B */  lui   $at, 0x800b
/* 03B33C 8005FF3C 00220821 */  addu  $at, $at, $v0
/* 03B340 8005FF40 A0231D49 */  sb    $v1, 0x1d49($at)
/* 03B344 8005FF44 08017FD9 */  j     .L8005FF64
/* 03B348 8005FF48 00000000 */   nop   

.L8005FF4C:
/* 03B34C 8005FF4C 00101080 */  sll   $v0, $s0, 2
/* 03B350 8005FF50 00501021 */  addu  $v0, $v0, $s0
/* 03B354 8005FF54 00021040 */  sll   $v0, $v0, 1
/* 03B358 8005FF58 3C01800B */  lui   $at, 0x800b
/* 03B35C 8005FF5C 00220821 */  addu  $at, $at, $v0
/* 03B360 8005FF60 A0201D49 */  sb    $zero, 0x1d49($at)
.L8005FF64:
/* 03B364 8005FF64 0C018250 */  jal   osSetIntMask
/* 03B368 8005FF68 00000000 */   nop   
/* 03B36C 8005FF6C 0220102D */  daddu $v0, $s1, $zero
/* 03B370 8005FF70 8FBF0028 */  lw    $ra, 0x28($sp)
/* 03B374 8005FF74 8FB10024 */  lw    $s1, 0x24($sp)
/* 03B378 8005FF78 8FB00020 */  lw    $s0, 0x20($sp)
/* 03B37C 8005FF7C 03E00008 */  jr    $ra
/* 03B380 8005FF80 27BD0030 */   addiu $sp, $sp, 0x30

/* 03B384 8005FF84 00000000 */  nop   
/* 03B388 8005FF88 00000000 */  nop   
/* 03B38C 8005FF8C 00000000 */  nop   


