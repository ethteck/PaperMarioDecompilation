.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osPfsIsPlug
/* 048740 8006D340 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 048744 8006D344 AFB20040 */  sw    $s2, 0x40($sp)
/* 048748 8006D348 00809021 */  addu  $s2, $a0, $zero
/* 04874C 8006D34C AFB70054 */  sw    $s7, 0x54($sp)
/* 048750 8006D350 00A0B821 */  addu  $s7, $a1, $zero
/* 048754 8006D354 AFB30044 */  sw    $s3, 0x44($sp)
/* 048758 8006D358 00009821 */  addu  $s3, $zero, $zero
/* 04875C 8006D35C AFB00038 */  sw    $s0, 0x38($sp)
/* 048760 8006D360 24100003 */  addiu $s0, $zero, 3
/* 048764 8006D364 AFBF0058 */  sw    $ra, 0x58($sp)
/* 048768 8006D368 AFB60050 */  sw    $s6, 0x50($sp)
/* 04876C 8006D36C AFB5004C */  sw    $s5, 0x4c($sp)
/* 048770 8006D370 AFB40048 */  sw    $s4, 0x48($sp)
/* 048774 8006D374 0C019771 */  jal   osSiGetAccess
/* 048778 8006D378 AFB1003C */   sw    $s1, 0x3c($sp)
/* 04877C 8006D37C 3C14800E */  lui   $s4, 0x800e
/* 048780 8006D380 2694A000 */  addiu $s4, $s4, -0x6000
/* 048784 8006D384 27B10020 */  addiu $s1, $sp, 0x20
/* 048788 8006D388 27B50010 */  addiu $s5, $sp, 0x10
.L8006D38C:
/* 04878C 8006D38C 0C01B52F */  jal   osPfsRequestData
/* 048790 8006D390 00002021 */   addu  $a0, $zero, $zero
/* 048794 8006D394 24040001 */  addiu $a0, $zero, 1
/* 048798 8006D398 0C019730 */  jal   osSiRawStartDma
/* 04879C 8006D39C 02802821 */   addu  $a1, $s4, $zero
/* 0487A0 8006D3A0 02402021 */  addu  $a0, $s2, $zero
/* 0487A4 8006D3A4 02202821 */  addu  $a1, $s1, $zero
/* 0487A8 8006D3A8 0C0195BC */  jal   osRecvMesg
/* 0487AC 8006D3AC 24060001 */   addiu $a2, $zero, 1
/* 0487B0 8006D3B0 00002021 */  addu  $a0, $zero, $zero
/* 0487B4 8006D3B4 0C019730 */  jal   osSiRawStartDma
/* 0487B8 8006D3B8 02802821 */   addu  $a1, $s4, $zero
/* 0487BC 8006D3BC 02402021 */  addu  $a0, $s2, $zero
/* 0487C0 8006D3C0 02202821 */  addu  $a1, $s1, $zero
/* 0487C4 8006D3C4 24060001 */  addiu $a2, $zero, 1
/* 0487C8 8006D3C8 0C0195BC */  jal   osRecvMesg
/* 0487CC 8006D3CC 0040B021 */   addu  $s6, $v0, $zero
/* 0487D0 8006D3D0 27A40024 */  addiu $a0, $sp, 0x24
/* 0487D4 8006D3D4 0C01B558 */  jal   osPfsGetInitData
/* 0487D8 8006D3D8 27A50010 */   addiu $a1, $sp, 0x10
/* 0487DC 8006D3DC 3C02800A */  lui   $v0, 0x800a
/* 0487E0 8006D3E0 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 0487E4 8006D3E4 1840000C */  blez  $v0, .L8006D418
/* 0487E8 8006D3E8 00002021 */   addu  $a0, $zero, $zero
/* 0487EC 8006D3EC 00402821 */  addu  $a1, $v0, $zero
/* 0487F0 8006D3F0 02A01821 */  addu  $v1, $s5, $zero
.L8006D3F4:
/* 0487F4 8006D3F4 90620002 */  lbu   $v0, 2($v1)
/* 0487F8 8006D3F8 30420004 */  andi  $v0, $v0, 4
/* 0487FC 8006D3FC 54400003 */  bnel  $v0, $zero, .L8006D40C
/* 048800 8006D400 24840001 */   addiu $a0, $a0, 1
/* 048804 8006D404 0801B506 */  j     .L8006D418
/* 048808 8006D408 2610FFFF */   addiu $s0, $s0, -1

.L8006D40C:
/* 04880C 8006D40C 0085102A */  slt   $v0, $a0, $a1
/* 048810 8006D410 1440FFF8 */  bnez  $v0, .L8006D3F4
/* 048814 8006D414 24630004 */   addiu $v1, $v1, 4
.L8006D418:
/* 048818 8006D418 3C03800A */  lui   $v1, 0x800a
/* 04881C 8006D41C 9063A606 */  lbu   $v1, -0x59fa($v1)
/* 048820 8006D420 00831026 */  xor   $v0, $a0, $v1
/* 048824 8006D424 0002102B */  sltu  $v0, $zero, $v0
/* 048828 8006D428 00021023 */  negu  $v0, $v0
/* 04882C 8006D42C 02028024 */  and   $s0, $s0, $v0
/* 048830 8006D430 1E00FFD6 */  bgtz  $s0, .L8006D38C
/* 048834 8006D434 00000000 */   nop   
/* 048838 8006D438 10600011 */  beqz  $v1, .L8006D480
/* 04883C 8006D43C 00002021 */   addu  $a0, $zero, $zero
/* 048840 8006D440 24060001 */  addiu $a2, $zero, 1
/* 048844 8006D444 00602821 */  addu  $a1, $v1, $zero
/* 048848 8006D448 27A30010 */  addiu $v1, $sp, 0x10
.L8006D44C:
/* 04884C 8006D44C 90620003 */  lbu   $v0, 3($v1)
/* 048850 8006D450 54400008 */  bnel  $v0, $zero, .L8006D474
/* 048854 8006D454 24840001 */   addiu $a0, $a0, 1
/* 048858 8006D458 90620002 */  lbu   $v0, 2($v1)
/* 04885C 8006D45C 30420001 */  andi  $v0, $v0, 1
/* 048860 8006D460 50400004 */  beql  $v0, $zero, .L8006D474
/* 048864 8006D464 24840001 */   addiu $a0, $a0, 1
/* 048868 8006D468 00861004 */  sllv  $v0, $a2, $a0
/* 04886C 8006D46C 02629825 */  or    $s3, $s3, $v0
/* 048870 8006D470 24840001 */  addiu $a0, $a0, 1
.L8006D474:
/* 048874 8006D474 0085102A */  slt   $v0, $a0, $a1
/* 048878 8006D478 1440FFF4 */  bnez  $v0, .L8006D44C
/* 04887C 8006D47C 24630004 */   addiu $v1, $v1, 4
.L8006D480:
/* 048880 8006D480 0C01978C */  jal   osSiRelAccess
/* 048884 8006D484 00000000 */   nop   
/* 048888 8006D488 A2F30000 */  sb    $s3, ($s7)
/* 04888C 8006D48C 02C01021 */  addu  $v0, $s6, $zero
/* 048890 8006D490 8FBF0058 */  lw    $ra, 0x58($sp)
/* 048894 8006D494 8FB70054 */  lw    $s7, 0x54($sp)
/* 048898 8006D498 8FB60050 */  lw    $s6, 0x50($sp)
/* 04889C 8006D49C 8FB5004C */  lw    $s5, 0x4c($sp)
/* 0488A0 8006D4A0 8FB40048 */  lw    $s4, 0x48($sp)
/* 0488A4 8006D4A4 8FB30044 */  lw    $s3, 0x44($sp)
/* 0488A8 8006D4A8 8FB20040 */  lw    $s2, 0x40($sp)
/* 0488AC 8006D4AC 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0488B0 8006D4B0 8FB00038 */  lw    $s0, 0x38($sp)
/* 0488B4 8006D4B4 03E00008 */  jr    $ra
/* 0488B8 8006D4B8 27BD0060 */   addiu $sp, $sp, 0x60

