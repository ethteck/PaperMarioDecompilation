.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800505E4
/* 02B9E4 800505E4 00041903 */  sra   $v1, $a0, 4
/* 02B9E8 800505E8 00041043 */  sra   $v0, $a0, 1
/* 02B9EC 800505EC 00621821 */  addu  $v1, $v1, $v0
/* 02B9F0 800505F0 30630001 */  andi  $v1, $v1, 1
/* 02B9F4 800505F4 00041183 */  sra   $v0, $a0, 6
/* 02B9F8 800505F8 3042000F */  andi  $v0, $v0, 0xf
/* 02B9FC 800505FC 00042080 */  sll   $a0, $a0, 2
/* 02BA00 80050600 308400F0 */  andi  $a0, $a0, 0xf0
/* 02BA04 80050604 10600009 */  beqz  $v1, .L8005062C
/* 02BA08 80050608 00442021 */   addu  $a0, $v0, $a0
/* 02BA0C 8005060C 30C300FF */  andi  $v1, $a2, 0xff
/* 02BA10 80050610 00041080 */  sll   $v0, $a0, 2
/* 02BA14 80050614 00441021 */  addu  $v0, $v0, $a0
/* 02BA18 80050618 00620018 */  mult  $v1, $v0
/* 02BA1C 8005061C 00003812 */  mflo  $a3
/* 02BA20 80050620 00071203 */  sra   $v0, $a3, 8
/* 02BA24 80050624 08014192 */  j     .L80050648
/* 02BA28 80050628 00A21021 */   addu  $v0, $a1, $v0

.L8005062C:
/* 02BA2C 8005062C 30C300FF */  andi  $v1, $a2, 0xff
/* 02BA30 80050630 00041080 */  sll   $v0, $a0, 2
/* 02BA34 80050634 00441021 */  addu  $v0, $v0, $a0
/* 02BA38 80050638 00620018 */  mult  $v1, $v0
/* 02BA3C 8005063C 00003812 */  mflo  $a3
/* 02BA40 80050640 00071203 */  sra   $v0, $a3, 8
/* 02BA44 80050644 00A21023 */  subu  $v0, $a1, $v0
.L80050648:
/* 02BA48 80050648 00021400 */  sll   $v0, $v0, 0x10
/* 02BA4C 8005064C 03E00008 */  jr    $ra
/* 02BA50 80050650 00021403 */   sra   $v0, $v0, 0x10

