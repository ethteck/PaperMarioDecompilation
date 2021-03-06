.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel set_music_track
/* 0E1018 8014A918 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E101C 8014A91C 3C038016 */  lui   $v1, 0x8016
/* 0E1020 8014A920 24639AF0 */  addiu $v1, $v1, -0x6510
/* 0E1024 8014A924 00041040 */  sll   $v0, $a0, 1
/* 0E1028 8014A928 00441021 */  addu  $v0, $v0, $a0
/* 0E102C 8014A92C 00021100 */  sll   $v0, $v0, 4
/* 0E1030 8014A930 00431021 */  addu  $v0, $v0, $v1
/* 0E1034 8014A934 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E1038 8014A938 94430000 */  lhu   $v1, ($v0)
/* 0E103C 8014A93C 8FA80030 */  lw    $t0, 0x30($sp)
/* 0E1040 8014A940 3063FFF7 */  andi  $v1, $v1, 0xfff7
/* 0E1044 8014A944 00084400 */  sll   $t0, $t0, 0x10
/* 0E1048 8014A948 00084403 */  sra   $t0, $t0, 0x10
/* 0E104C 8014A94C A4430000 */  sh    $v1, ($v0)
/* 0E1050 8014A950 0C0529F8 */  jal   _set_music_track
/* 0E1054 8014A954 AFA80010 */   sw    $t0, 0x10($sp)
/* 0E1058 8014A958 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E105C 8014A95C 03E00008 */  jr    $ra
/* 0E1060 8014A960 27BD0020 */   addiu $sp, $sp, 0x20

