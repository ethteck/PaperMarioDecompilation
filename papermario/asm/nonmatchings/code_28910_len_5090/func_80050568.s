.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80050568
/* 02B968 80050568 8C820050 */  lw    $v0, 0x50($a0)
/* 02B96C 8005056C 30A500FF */  andi  $a1, $a1, 0xff
/* 02B970 80050570 000221C3 */  sra   $a0, $v0, 7
/* 02B974 80050574 00021883 */  sra   $v1, $v0, 2
/* 02B978 80050578 00832021 */  addu  $a0, $a0, $v1
/* 02B97C 8005057C 30840001 */  andi  $a0, $a0, 1
/* 02B980 80050580 00021A03 */  sra   $v1, $v0, 8
/* 02B984 80050584 3063003F */  andi  $v1, $v1, 0x3f
/* 02B988 80050588 00021100 */  sll   $v0, $v0, 4
/* 02B98C 8005058C 304200C0 */  andi  $v0, $v0, 0xc0
/* 02B990 80050590 10800007 */  beqz  $a0, .L800505B0
/* 02B994 80050594 00621821 */   addu  $v1, $v1, $v0
/* 02B998 80050598 30C200FF */  andi  $v0, $a2, 0xff
/* 02B99C 8005059C 00430018 */  mult  $v0, $v1
/* 02B9A0 800505A0 00003812 */  mflo  $a3
/* 02B9A4 800505A4 00071203 */  sra   $v0, $a3, 8
/* 02B9A8 800505A8 08014171 */  j     .L800505C4
/* 02B9AC 800505AC 00A22821 */   addu  $a1, $a1, $v0

.L800505B0:
/* 02B9B0 800505B0 30C200FF */  andi  $v0, $a2, 0xff
/* 02B9B4 800505B4 00430018 */  mult  $v0, $v1
/* 02B9B8 800505B8 00003812 */  mflo  $a3
/* 02B9BC 800505BC 00071203 */  sra   $v0, $a3, 8
/* 02B9C0 800505C0 00A22823 */  subu  $a1, $a1, $v0
.L800505C4:
/* 02B9C4 800505C4 04A10003 */  bgez  $a1, .L800505D4
/* 02B9C8 800505C8 28A20080 */   slti  $v0, $a1, 0x80
/* 02B9CC 800505CC 08014177 */  j     .L800505DC
/* 02B9D0 800505D0 0000282D */   daddu $a1, $zero, $zero

.L800505D4:
/* 02B9D4 800505D4 50400001 */  beql  $v0, $zero, .L800505DC
/* 02B9D8 800505D8 2405007F */   addiu $a1, $zero, 0x7f
.L800505DC:
/* 02B9DC 800505DC 03E00008 */  jr    $ra
/* 02B9E0 800505E0 30A200FF */   andi  $v0, $a1, 0xff

