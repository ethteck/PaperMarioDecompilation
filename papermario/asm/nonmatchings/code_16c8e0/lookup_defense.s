.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel lookup_defense
/* 194724 80265E44 0080182D */  daddu $v1, $a0, $zero
/* 194728 80265E48 8C620000 */  lw    $v0, ($v1)
/* 19472C 80265E4C 1040000F */  beqz  $v0, .L80265E8C
/* 194730 80265E50 0000302D */   daddu $a2, $zero, $zero
/* 194734 80265E54 24070001 */  addiu $a3, $zero, 1
/* 194738 80265E58 24840004 */  addiu $a0, $a0, 4
/* 19473C 80265E5C 8C620000 */  lw    $v0, ($v1)
.L80265E60:
/* 194740 80265E60 14470002 */  bne   $v0, $a3, .L80265E6C
/* 194744 80265E64 00000000 */   nop   
/* 194748 80265E68 8C860000 */  lw    $a2, ($a0)
.L80265E6C:
/* 19474C 80265E6C 14450004 */  bne   $v0, $a1, .L80265E80
/* 194750 80265E70 24630008 */   addiu $v1, $v1, 8
/* 194754 80265E74 8C860000 */  lw    $a2, ($a0)
/* 194758 80265E78 03E00008 */  jr    $ra
/* 19475C 80265E7C 00C0102D */   daddu $v0, $a2, $zero

.L80265E80:
/* 194760 80265E80 8C620000 */  lw    $v0, ($v1)
/* 194764 80265E84 1440FFF6 */  bnez  $v0, .L80265E60
/* 194768 80265E88 24840008 */   addiu $a0, $a0, 8
.L80265E8C:
/* 19476C 80265E8C 00C0102D */  daddu $v0, $a2, $zero
/* 194770 80265E90 03E00008 */  jr    $ra
/* 194774 80265E94 00000000 */   nop   

