.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel contPakFileDelete
/* 03AC64 8005F864 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03AC68 8005F868 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03AC6C 8005F86C 8C82000C */  lw    $v0, 0xc($a0)
/* 03AC70 8005F870 3C058009 */  lui   $a1, 0x8009
/* 03AC74 8005F874 94A53CA0 */  lhu   $a1, 0x3ca0($a1)
/* 03AC78 8005F878 3C068009 */  lui   $a2, 0x8009
/* 03AC7C 8005F87C 8CC63CA4 */  lw    $a2, 0x3ca4($a2)
/* 03AC80 8005F880 8C430008 */  lw    $v1, 8($v0)
/* 03AC84 8005F884 8C440000 */  lw    $a0, ($v0)
/* 03AC88 8005F888 AFA30010 */  sw    $v1, 0x10($sp)
/* 03AC8C 8005F88C 8C840000 */  lw    $a0, ($a0)
/* 03AC90 8005F890 0C01A170 */  jal   osPfsDeleteFile
/* 03AC94 8005F894 8C470004 */   lw    $a3, 4($v0)
/* 03AC98 8005F898 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03AC9C 8005F89C 03E00008 */  jr    $ra
/* 03ACA0 8005F8A0 27BD0020 */   addiu $sp, $sp, 0x20

