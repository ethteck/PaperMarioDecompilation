.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osSetThreadPri
/* 041350 80065F50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 041354 80065F54 AFB00010 */  sw    $s0, 0x10($sp)
/* 041358 80065F58 00808021 */  addu  $s0, $a0, $zero
/* 04135C 80065F5C AFB10014 */  sw    $s1, 0x14($sp)
/* 041360 80065F60 00A08821 */  addu  $s1, $a1, $zero
/* 041364 80065F64 AFBF001C */  sw    $ra, 0x1c($sp)
/* 041368 80065F68 0C01ACD8 */  jal   __osDisableInt
/* 04136C 80065F6C AFB20018 */   sw    $s2, 0x18($sp)
/* 041370 80065F70 16000003 */  bnez  $s0, .L80065F80
/* 041374 80065F74 00409021 */   addu  $s2, $v0, $zero
/* 041378 80065F78 3C108009 */  lui   $s0, 0x8009
/* 04137C 80065F7C 8E104660 */  lw    $s0, 0x4660($s0)
.L80065F80:
/* 041380 80065F80 8E020004 */  lw    $v0, 4($s0)
/* 041384 80065F84 1051001C */  beq   $v0, $s1, .L80065FF8
/* 041388 80065F88 00000000 */   nop   
/* 04138C 80065F8C 3C028009 */  lui   $v0, 0x8009
/* 041390 80065F90 8C424660 */  lw    $v0, 0x4660($v0)
/* 041394 80065F94 1202000B */  beq   $s0, $v0, .L80065FC4
/* 041398 80065F98 AE110004 */   sw    $s1, 4($s0)
/* 04139C 80065F9C 96030010 */  lhu   $v1, 0x10($s0)
/* 0413A0 80065FA0 24020001 */  addiu $v0, $zero, 1
/* 0413A4 80065FA4 10620007 */  beq   $v1, $v0, .L80065FC4
/* 0413A8 80065FA8 00000000 */   nop   
/* 0413AC 80065FAC 8E040008 */  lw    $a0, 8($s0)
/* 0413B0 80065FB0 0C019880 */  jal   osDequeueThread
/* 0413B4 80065FB4 02002821 */   addu  $a1, $s0, $zero
/* 0413B8 80065FB8 8E040008 */  lw    $a0, 8($s0)
/* 0413BC 80065FBC 0C01AC5D */  jal   osEnqueueThread
/* 0413C0 80065FC0 02002821 */   addu  $a1, $s0, $zero
.L80065FC4:
/* 0413C4 80065FC4 3C048009 */  lui   $a0, 0x8009
/* 0413C8 80065FC8 8C844660 */  lw    $a0, 0x4660($a0)
/* 0413CC 80065FCC 3C028009 */  lui   $v0, 0x8009
/* 0413D0 80065FD0 8C424658 */  lw    $v0, 0x4658($v0)
/* 0413D4 80065FD4 8C830004 */  lw    $v1, 4($a0)
/* 0413D8 80065FD8 8C420004 */  lw    $v0, 4($v0)
/* 0413DC 80065FDC 0062182A */  slt   $v1, $v1, $v0
/* 0413E0 80065FE0 10600005 */  beqz  $v1, .L80065FF8
/* 0413E4 80065FE4 24020002 */   addiu $v0, $zero, 2
/* 0413E8 80065FE8 A4820010 */  sh    $v0, 0x10($a0)
/* 0413EC 80065FEC 3C048009 */  lui   $a0, 0x8009
/* 0413F0 80065FF0 0C01AC1B */  jal   osEnqueueAndYield
/* 0413F4 80065FF4 24844658 */   addiu $a0, $a0, 0x4658
.L80065FF8:
/* 0413F8 80065FF8 0C01ACF4 */  jal   __osRestoreInt
/* 0413FC 80065FFC 02402021 */   addu  $a0, $s2, $zero
/* 041400 80066000 8FBF001C */  lw    $ra, 0x1c($sp)
/* 041404 80066004 8FB20018 */  lw    $s2, 0x18($sp)
/* 041408 80066008 8FB10014 */  lw    $s1, 0x14($sp)
/* 04140C 8006600C 8FB00010 */  lw    $s0, 0x10($sp)
/* 041410 80066010 03E00008 */  jr    $ra
/* 041414 80066014 27BD0020 */   addiu $sp, $sp, 0x20

/* 041418 80066018 00000000 */  nop   
/* 04141C 8006601C 00000000 */  nop   


