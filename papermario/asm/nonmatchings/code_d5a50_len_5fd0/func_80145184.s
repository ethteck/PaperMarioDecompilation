.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80145184
/* 0DB884 80145184 2402F7FF */  addiu $v0, $zero, -0x801
/* 0DB888 80145188 00822024 */  and   $a0, $a0, $v0
/* 0DB88C 8014518C 00042080 */  sll   $a0, $a0, 2
/* 0DB890 80145190 3C030001 */  lui   $v1, 1
/* 0DB894 80145194 3C028015 */  lui   $v0, 0x8015
/* 0DB898 80145198 8C427960 */  lw    $v0, 0x7960($v0)
/* 0DB89C 8014519C 44850000 */  mtc1  $a1, $f0
/* 0DB8A0 801451A0 00822021 */  addu  $a0, $a0, $v0
/* 0DB8A4 801451A4 8C840000 */  lw    $a0, ($a0)
/* 0DB8A8 801451A8 44861000 */  mtc1  $a2, $f2
/* 0DB8AC 801451AC 8C820000 */  lw    $v0, ($a0)
/* 0DB8B0 801451B0 44872000 */  mtc1  $a3, $f4
/* 0DB8B4 801451B4 00431024 */  and   $v0, $v0, $v1
/* 0DB8B8 801451B8 10400004 */  beqz  $v0, .L801451CC
/* 0DB8BC 801451BC 8C83001C */   lw    $v1, 0x1c($a0)
/* 0DB8C0 801451C0 E4600004 */  swc1  $f0, 4($v1)
/* 0DB8C4 801451C4 E4620008 */  swc1  $f2, 8($v1)
/* 0DB8C8 801451C8 E464000C */  swc1  $f4, 0xc($v1)
.L801451CC:
/* 0DB8CC 801451CC 03E00008 */  jr    $ra
/* 0DB8D0 801451D0 00000000 */   nop   

