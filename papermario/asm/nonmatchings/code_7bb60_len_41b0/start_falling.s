.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel start_falling
/* 07F480 800E5FD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07F484 800E5FD4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 07F488 800E5FD8 0C039769 */  jal   set_action_state
/* 07F48C 800E5FDC 24040008 */   addiu $a0, $zero, 8
/* 07F490 800E5FE0 3C013DEA */  lui   $at, 0x3dea
/* 07F494 800E5FE4 3421161E */  ori   $at, $at, 0x161e
/* 07F498 800E5FE8 44810000 */  mtc1  $at, $f0
/* 07F49C 800E5FEC 3C01BE92 */  lui   $at, 0xbe92
/* 07F4A0 800E5FF0 3421FEC5 */  ori   $at, $at, 0xfec5
/* 07F4A4 800E5FF4 44811000 */  mtc1  $at, $f2
/* 07F4A8 800E5FF8 3C01BE3A */  lui   $at, 0xbe3a
/* 07F4AC 800E5FFC 3421ACDA */  ori   $at, $at, 0xacda
/* 07F4B0 800E6000 44812000 */  mtc1  $at, $f4
/* 07F4B4 800E6004 3C013C3C */  lui   $at, 0x3c3c
/* 07F4B8 800E6008 3421BE62 */  ori   $at, $at, 0xbe62
/* 07F4BC 800E600C 44813000 */  mtc1  $at, $f6
/* 07F4C0 800E6010 3C028011 */  lui   $v0, 0x8011
/* 07F4C4 800E6014 2442EFC8 */  addiu $v0, $v0, -0x1038
/* 07F4C8 800E6018 E4400070 */  swc1  $f0, 0x70($v0)
/* 07F4CC 800E601C E4420074 */  swc1  $f2, 0x74($v0)
/* 07F4D0 800E6020 E4440078 */  swc1  $f4, 0x78($v0)
/* 07F4D4 800E6024 E446007C */  swc1  $f6, 0x7c($v0)
/* 07F4D8 800E6028 8FBF0010 */  lw    $ra, 0x10($sp)
/* 07F4DC 800E602C 03E00008 */  jr    $ra
/* 07F4E0 800E6030 27BD0018 */   addiu $sp, $sp, 0x18

