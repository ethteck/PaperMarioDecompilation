.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osAiSetNextBuffer
/* 03CA80 80061680 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03CA84 80061684 AFB00010 */  sw    $s0, 0x10($sp)
/* 03CA88 80061688 00808021 */  addu  $s0, $a0, $zero
/* 03CA8C 8006168C AFB10014 */  sw    $s1, 0x14($sp)
/* 03CA90 80061690 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03CA94 80061694 0C01AE14 */  jal   osAiDeviceBusy
/* 03CA98 80061698 00A08821 */   addu  $s1, $a1, $zero
/* 03CA9C 8006169C 14400018 */  bnez  $v0, .L80061700
/* 03CAA0 800616A0 2402FFFF */   addiu $v0, $zero, -1
/* 03CAA4 800616A4 3C028009 */  lui   $v0, 0x8009
/* 03CAA8 800616A8 90423DA0 */  lbu   $v0, 0x3da0($v0)
/* 03CAAC 800616AC 10400002 */  beqz  $v0, .L800616B8
/* 03CAB0 800616B0 02002021 */   addu  $a0, $s0, $zero
/* 03CAB4 800616B4 2484E000 */  addiu $a0, $a0, -0x2000
.L800616B8:
/* 03CAB8 800616B8 02111021 */  addu  $v0, $s0, $s1
/* 03CABC 800616BC 30421FFF */  andi  $v0, $v0, 0x1fff
/* 03CAC0 800616C0 14400004 */  bnez  $v0, .L800616D4
/* 03CAC4 800616C4 24020001 */   addiu $v0, $zero, 1
/* 03CAC8 800616C8 3C018009 */  lui   $at, 0x8009
/* 03CACC 800616CC 080185B7 */  j     .L800616DC
/* 03CAD0 800616D0 A0223DA0 */   sb    $v0, 0x3da0($at)

.L800616D4:
/* 03CAD4 800616D4 3C018009 */  lui   $at, 0x8009
/* 03CAD8 800616D8 A0203DA0 */  sb    $zero, 0x3da0($at)
.L800616DC:
/* 03CADC 800616DC 0C0187A4 */  jal   osVirtualToPhysical
/* 03CAE0 800616E0 00000000 */   nop   
/* 03CAE4 800616E4 3C05A450 */  lui   $a1, 0xa450
/* 03CAE8 800616E8 34A50004 */  ori   $a1, $a1, 4
/* 03CAEC 800616EC 00402021 */  addu  $a0, $v0, $zero
/* 03CAF0 800616F0 00001021 */  addu  $v0, $zero, $zero
/* 03CAF4 800616F4 3C03A450 */  lui   $v1, 0xa450
/* 03CAF8 800616F8 AC640000 */  sw    $a0, ($v1)
/* 03CAFC 800616FC ACB10000 */  sw    $s1, ($a1)
.L80061700:
/* 03CB00 80061700 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03CB04 80061704 8FB10014 */  lw    $s1, 0x14($sp)
/* 03CB08 80061708 8FB00010 */  lw    $s0, 0x10($sp)
/* 03CB0C 8006170C 03E00008 */  jr    $ra
/* 03CB10 80061710 27BD0020 */   addiu $sp, $sp, 0x20

/* 03CB14 80061714 00000000 */  nop   
/* 03CB18 80061718 00000000 */  nop   
/* 03CB1C 8006171C 00000000 */  nop   


