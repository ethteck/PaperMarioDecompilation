.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_802473E4
/* 13A724 802473E4 00220821 */  addu  $at, $at, $v0
/* 13A728 802473E8 8022F072 */  lb    $v0, -0xf8e($at)
/* 13A72C 802473EC 82230008 */  lb    $v1, 8($s1)
/* 13A730 802473F0 00821021 */  addu  $v0, $a0, $v0
/* 13A734 802473F4 0062182A */  slt   $v1, $v1, $v0
/* 13A738 802473F8 10600006 */  beqz  $v1, .L80247414
/* 13A73C 802473FC 26250208 */   addiu $a1, $s1, 0x208
.L80247400:
/* 13A740 80247400 08091D11 */  j     func_80247444
/* 13A744 80247404 24020001 */   addiu $v0, $zero, 1

.L80247408:
/* 13A748 80247408 08091D11 */  j     func_80247444
/* 13A74C 8024740C 0000102D */   daddu $v0, $zero, $zero

.L80247410:
/* 13A750 80247410 26250208 */  addiu $a1, $s1, 0x208
.L80247414:
/* 13A754 80247414 0000202D */  daddu $a0, $zero, $zero
.L80247418:
/* 13A758 80247418 84A20000 */  lh    $v0, ($a1)
/* 13A75C 8024741C 50400005 */  beql  $v0, $zero, .L80247434
/* 13A760 80247420 A4B00000 */   sh    $s0, ($a1)
/* 13A764 80247424 24840001 */  addiu $a0, $a0, 1
/* 13A768 80247428 28820040 */  slti  $v0, $a0, 0x40
/* 13A76C 8024742C 1440FFFA */  bnez  $v0, .L80247418
/* 13A770 80247430 24A50002 */   addiu $a1, $a1, 2
.L80247434:
/* 13A774 80247434 24030040 */  addiu $v1, $zero, 0x40
/* 13A778 80247438 10830002 */  beq   $a0, $v1, .L80247444
/* 13A77C 8024743C 24020002 */   addiu $v0, $zero, 2
