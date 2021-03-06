.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel add_xz_vec3f_copy1
/* 192AA0 802641C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 192AA4 802641C4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 192AA8 802641C8 4485B000 */  mtc1  $a1, $f22
/* 192AAC 802641CC 3C0140C9 */  lui   $at, 0x40c9
/* 192AB0 802641D0 34210FD0 */  ori   $at, $at, 0xfd0
/* 192AB4 802641D4 44810000 */  mtc1  $at, $f0
/* 192AB8 802641D8 44862000 */  mtc1  $a2, $f4
/* 192ABC 802641DC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 192AC0 802641E0 46002502 */  mul.s $f20, $f4, $f0
/* 192AC4 802641E4 00000000 */  nop   
/* 192AC8 802641E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 192ACC 802641EC 3C0143B4 */  lui   $at, 0x43b4
/* 192AD0 802641F0 44810000 */  mtc1  $at, $f0
/* 192AD4 802641F4 0080802D */  daddu $s0, $a0, $zero
/* 192AD8 802641F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 192ADC 802641FC 4600A503 */  div.s $f20, $f20, $f0
/* 192AE0 80264200 0C00A85B */  jal   sin_rad
/* 192AE4 80264204 4600A306 */   mov.s $f12, $f20
/* 192AE8 80264208 4600A306 */  mov.s $f12, $f20
/* 192AEC 8026420C 0C00A874 */  jal   cos_rad
/* 192AF0 80264210 46000506 */   mov.s $f20, $f0
/* 192AF4 80264214 4614B502 */  mul.s $f20, $f22, $f20
/* 192AF8 80264218 00000000 */  nop   
/* 192AFC 8026421C 4600B587 */  neg.s $f22, $f22
/* 192B00 80264220 4600B582 */  mul.s $f22, $f22, $f0
/* 192B04 80264224 00000000 */  nop   
/* 192B08 80264228 C6020000 */  lwc1  $f2, ($s0)
/* 192B0C 8026422C 46141080 */  add.s $f2, $f2, $f20
/* 192B10 80264230 C6000008 */  lwc1  $f0, 8($s0)
/* 192B14 80264234 46160000 */  add.s $f0, $f0, $f22
/* 192B18 80264238 E6020000 */  swc1  $f2, ($s0)
/* 192B1C 8026423C E6000008 */  swc1  $f0, 8($s0)
/* 192B20 80264240 8FBF0014 */  lw    $ra, 0x14($sp)
/* 192B24 80264244 8FB00010 */  lw    $s0, 0x10($sp)
/* 192B28 80264248 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 192B2C 8026424C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 192B30 80264250 03E00008 */  jr    $ra
/* 192B34 80264254 27BD0028 */   addiu $sp, $sp, 0x28

