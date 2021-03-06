.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel nuPiReadRomOverlay
/* 03B4E0 800600E0 27BDFF98 */  addiu $sp, $sp, -0x68
/* 03B4E4 800600E4 AFB40058 */  sw    $s4, 0x58($sp)
/* 03B4E8 800600E8 0080A02D */  daddu $s4, $a0, $zero
/* 03B4EC 800600EC AFB5005C */  sw    $s5, 0x5c($sp)
/* 03B4F0 800600F0 24150001 */  addiu $s5, $zero, 1
/* 03B4F4 800600F4 AFB00048 */  sw    $s0, 0x48($sp)
/* 03B4F8 800600F8 27B00028 */  addiu $s0, $sp, 0x28
/* 03B4FC 800600FC 0200202D */  daddu $a0, $s0, $zero
/* 03B500 80060100 27A50040 */  addiu $a1, $sp, 0x40
/* 03B504 80060104 02A0302D */  daddu $a2, $s5, $zero
/* 03B508 80060108 AFBF0060 */  sw    $ra, 0x60($sp)
/* 03B50C 8006010C AFB30054 */  sw    $s3, 0x54($sp)
/* 03B510 80060110 AFB20050 */  sw    $s2, 0x50($sp)
/* 03B514 80060114 0C019560 */  jal   osCreateMesgQueue
/* 03B518 80060118 AFB1004C */   sw    $s1, 0x4c($sp)
/* 03B51C 8006011C A3A00012 */  sb    $zero, 0x12($sp)
/* 03B520 80060120 AFB00014 */  sw    $s0, 0x14($sp)
/* 03B524 80060124 8E840014 */  lw    $a0, 0x14($s4)
/* 03B528 80060128 8E850018 */  lw    $a1, 0x18($s4)
/* 03B52C 8006012C 0C0185C8 */  jal   osInvalDCache
/* 03B530 80060130 00A42823 */   subu  $a1, $a1, $a0
/* 03B534 80060134 8E84000C */  lw    $a0, 0xc($s4)
/* 03B538 80060138 8E850010 */  lw    $a1, 0x10($s4)
/* 03B53C 8006013C 0C0185F4 */  jal   osInvalICache
/* 03B540 80060140 00A42823 */   subu  $a1, $a1, $a0
/* 03B544 80060144 8E920000 */  lw    $s2, ($s4)
/* 03B548 80060148 8E820004 */  lw    $v0, 4($s4)
/* 03B54C 8006014C 8E930008 */  lw    $s3, 8($s4)
/* 03B550 80060150 00528823 */  subu  $s1, $v0, $s2
/* 03B554 80060154 1220001C */  beqz  $s1, .L800601C8
/* 03B558 80060158 00000000 */   nop   
.L8006015C:
/* 03B55C 8006015C 2E224001 */  sltiu $v0, $s1, 0x4001
/* 03B560 80060160 14400002 */  bnez  $v0, .L8006016C
/* 03B564 80060164 0220802D */   daddu $s0, $s1, $zero
/* 03B568 80060168 24104000 */  addiu $s0, $zero, 0x4000
.L8006016C:
/* 03B56C 8006016C 27A50010 */  addiu $a1, $sp, 0x10
/* 03B570 80060170 3C04800A */  lui   $a0, 0x800a
/* 03B574 80060174 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 03B578 80060178 0000302D */  daddu $a2, $zero, $zero
/* 03B57C 8006017C AFB30018 */  sw    $s3, 0x18($sp)
/* 03B580 80060180 AFB2001C */  sw    $s2, 0x1c($sp)
/* 03B584 80060184 0C018388 */  jal   osEPiStartDma
/* 03B588 80060188 AFB00020 */   sw    $s0, 0x20($sp)
/* 03B58C 8006018C 12A00007 */  beqz  $s5, .L800601AC
/* 03B590 80060190 27A40028 */   addiu $a0, $sp, 0x28
/* 03B594 80060194 8E84001C */  lw    $a0, 0x1c($s4)
/* 03B598 80060198 8E850020 */  lw    $a1, 0x20($s4)
/* 03B59C 8006019C 0000A82D */  daddu $s5, $zero, $zero
/* 03B5A0 800601A0 0C01925C */  jal   bzero
/* 03B5A4 800601A4 00A42823 */   subu  $a1, $a1, $a0
/* 03B5A8 800601A8 27A40028 */  addiu $a0, $sp, 0x28
.L800601AC:
/* 03B5AC 800601AC 27A50040 */  addiu $a1, $sp, 0x40
/* 03B5B0 800601B0 0C0195BC */  jal   osRecvMesg
/* 03B5B4 800601B4 24060001 */   addiu $a2, $zero, 1
/* 03B5B8 800601B8 02509021 */  addu  $s2, $s2, $s0
/* 03B5BC 800601BC 02308823 */  subu  $s1, $s1, $s0
/* 03B5C0 800601C0 1620FFE6 */  bnez  $s1, .L8006015C
/* 03B5C4 800601C4 02709821 */   addu  $s3, $s3, $s0
.L800601C8:
/* 03B5C8 800601C8 8FBF0060 */  lw    $ra, 0x60($sp)
/* 03B5CC 800601CC 8FB5005C */  lw    $s5, 0x5c($sp)
/* 03B5D0 800601D0 8FB40058 */  lw    $s4, 0x58($sp)
/* 03B5D4 800601D4 8FB30054 */  lw    $s3, 0x54($sp)
/* 03B5D8 800601D8 8FB20050 */  lw    $s2, 0x50($sp)
/* 03B5DC 800601DC 8FB1004C */  lw    $s1, 0x4c($sp)
/* 03B5E0 800601E0 8FB00048 */  lw    $s0, 0x48($sp)
/* 03B5E4 800601E4 03E00008 */  jr    $ra
/* 03B5E8 800601E8 27BD0068 */   addiu $sp, $sp, 0x68

/* 03B5EC 800601EC 00000000 */  nop   
