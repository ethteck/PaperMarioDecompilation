.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800538F8
/* 02ECF8 800538F8 0080282D */  daddu $a1, $a0, $zero
/* 02ECFC 800538FC 04A10010 */  bgez  $a1, .L80053940
/* 02ED00 80053900 30A3007F */   andi  $v1, $a1, 0x7f
/* 02ED04 80053904 00052823 */  negu  $a1, $a1
/* 02ED08 80053908 3C048008 */  lui   $a0, 0x8008
/* 02ED0C 8005390C 24848730 */  addiu $a0, $a0, -0x78d0
/* 02ED10 80053910 30A2007F */  andi  $v0, $a1, 0x7f
/* 02ED14 80053914 244200A0 */  addiu $v0, $v0, 0xa0
/* 02ED18 80053918 00021080 */  sll   $v0, $v0, 2
/* 02ED1C 8005391C 00441021 */  addu  $v0, $v0, $a0
/* 02ED20 80053920 30A33F80 */  andi  $v1, $a1, 0x3f80
/* 02ED24 80053924 00031942 */  srl   $v1, $v1, 5
/* 02ED28 80053928 00641821 */  addu  $v1, $v1, $a0
/* 02ED2C 8005392C C4420000 */  lwc1  $f2, ($v0)
/* 02ED30 80053930 C4600480 */  lwc1  $f0, 0x480($v1)
/* 02ED34 80053934 46001002 */  mul.s $f0, $f2, $f0
/* 02ED38 80053938 03E00008 */  jr    $ra
/* 02ED3C 8005393C 00000000 */   nop   

.L80053940:
/* 02ED40 80053940 3C048008 */  lui   $a0, 0x8008
/* 02ED44 80053944 24848730 */  addiu $a0, $a0, -0x78d0
/* 02ED48 80053948 00031880 */  sll   $v1, $v1, 2
/* 02ED4C 8005394C 00641821 */  addu  $v1, $v1, $a0
/* 02ED50 80053950 30A20F80 */  andi  $v0, $a1, 0xf80
/* 02ED54 80053954 00021142 */  srl   $v0, $v0, 5
/* 02ED58 80053958 34420200 */  ori   $v0, $v0, 0x200
/* 02ED5C 8005395C 00441021 */  addu  $v0, $v0, $a0
/* 02ED60 80053960 C4620000 */  lwc1  $f2, ($v1)
/* 02ED64 80053964 C4400000 */  lwc1  $f0, ($v0)
/* 02ED68 80053968 46001002 */  mul.s $f0, $f2, $f0
/* 02ED6C 8005396C 03E00008 */  jr    $ra
/* 02ED70 80053970 00000000 */   nop   

