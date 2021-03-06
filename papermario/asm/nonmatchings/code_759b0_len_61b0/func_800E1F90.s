.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800E1F90
/* 07B440 800E1F90 3C048011 */  lui   $a0, 0x8011
/* 07B444 800E1F94 2484EFC8 */  addiu $a0, $a0, -0x1038
/* 07B448 800E1F98 3C038007 */  lui   $v1, 0x8007
/* 07B44C 800E1F9C 8C63419C */  lw    $v1, 0x419c($v1)
/* 07B450 800E1FA0 8C8501B8 */  lw    $a1, 0x1b8($a0)
/* 07B454 800E1FA4 80660040 */  lb    $a2, 0x40($v1)
/* 07B458 800E1FA8 AC8600E8 */  sw    $a2, 0xe8($a0)
/* 07B45C 800E1FAC 80620044 */  lb    $v0, 0x44($v1)
/* 07B460 800E1FB0 AC8200EC */  sw    $v0, 0xec($a0)
/* 07B464 800E1FB4 8C620000 */  lw    $v0, ($v1)
/* 07B468 800E1FB8 AC8200DC */  sw    $v0, 0xdc($a0)
/* 07B46C 800E1FBC 8C620010 */  lw    $v0, 0x10($v1)
/* 07B470 800E1FC0 AC8200E0 */  sw    $v0, 0xe0($a0)
/* 07B474 800E1FC4 8C620020 */  lw    $v0, 0x20($v1)
/* 07B478 800E1FC8 24A50001 */  addiu $a1, $a1, 1
/* 07B47C 800E1FCC AC8200E4 */  sw    $v0, 0xe4($a0)
/* 07B480 800E1FD0 28A2000A */  slti  $v0, $a1, 0xa
/* 07B484 800E1FD4 14400002 */  bnez  $v0, .L800E1FE0
/* 07B488 800E1FD8 0080382D */   daddu $a3, $a0, $zero
/* 07B48C 800E1FDC 0000282D */  daddu $a1, $zero, $zero
.L800E1FE0:
/* 07B490 800E1FE0 00051080 */  sll   $v0, $a1, 2
/* 07B494 800E1FE4 00441021 */  addu  $v0, $v0, $a0
/* 07B498 800E1FE8 AC460168 */  sw    $a2, 0x168($v0)
/* 07B49C 800E1FEC 8C8300EC */  lw    $v1, 0xec($a0)
/* 07B4A0 800E1FF0 AC430190 */  sw    $v1, 0x190($v0)
/* 07B4A4 800E1FF4 8C8300DC */  lw    $v1, 0xdc($a0)
/* 07B4A8 800E1FF8 AC4300F0 */  sw    $v1, 0xf0($v0)
/* 07B4AC 800E1FFC 8C8300E0 */  lw    $v1, 0xe0($a0)
/* 07B4B0 800E2000 AC430118 */  sw    $v1, 0x118($v0)
/* 07B4B4 800E2004 8C8300E4 */  lw    $v1, 0xe4($a0)
/* 07B4B8 800E2008 AC430140 */  sw    $v1, 0x140($v0)
/* 07B4BC 800E200C 8C820000 */  lw    $v0, ($a0)
/* 07B4C0 800E2010 30423000 */  andi  $v0, $v0, 0x3000
/* 07B4C4 800E2014 10400006 */  beqz  $v0, .L800E2030
/* 07B4C8 800E2018 AC8501B8 */   sw    $a1, 0x1b8($a0)
/* 07B4CC 800E201C AC8000E8 */  sw    $zero, 0xe8($a0)
/* 07B4D0 800E2020 AC8000EC */  sw    $zero, 0xec($a0)
/* 07B4D4 800E2024 AC8000DC */  sw    $zero, 0xdc($a0)
/* 07B4D8 800E2028 AC8000E0 */  sw    $zero, 0xe0($a0)
/* 07B4DC 800E202C AC8000E4 */  sw    $zero, 0xe4($a0)
.L800E2030:
/* 07B4E0 800E2030 8CE40004 */  lw    $a0, 4($a3)
/* 07B4E4 800E2034 30820008 */  andi  $v0, $a0, 8
/* 07B4E8 800E2038 10400006 */  beqz  $v0, .L800E2054
/* 07B4EC 800E203C 3C020020 */   lui   $v0, 0x20
/* 07B4F0 800E2040 8CE300E0 */  lw    $v1, 0xe0($a3)
/* 07B4F4 800E2044 00821025 */  or    $v0, $a0, $v0
/* 07B4F8 800E2048 ACE20004 */  sw    $v0, 4($a3)
/* 07B4FC 800E204C 34630004 */  ori   $v1, $v1, 4
/* 07B500 800E2050 ACE300E0 */  sw    $v1, 0xe0($a3)
.L800E2054:
/* 07B504 800E2054 03E00008 */  jr    $ra
/* 07B508 800E2058 00000000 */   nop   

