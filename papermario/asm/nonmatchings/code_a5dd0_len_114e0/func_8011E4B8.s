.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8011E4B8
/* 0B4BB8 8011E4B8 3C038015 */  lui   $v1, 0x8015
/* 0B4BBC 8011E4BC 8C633A40 */  lw    $v1, 0x3a40($v1)
/* 0B4BC0 8011E4C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B4BC4 8011E4C4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0B4BC8 8011E4C8 0080882D */  daddu $s1, $a0, $zero
/* 0B4BCC 8011E4CC AFB00010 */  sw    $s0, 0x10($sp)
/* 0B4BD0 8011E4D0 0000802D */  daddu $s0, $zero, $zero
/* 0B4BD4 8011E4D4 AFBF0018 */  sw    $ra, 0x18($sp)
.L8011E4D8:
/* 0B4BD8 8011E4D8 8C620000 */  lw    $v0, ($v1)
/* 0B4BDC 8011E4DC 10400006 */  beqz  $v0, .L8011E4F8
/* 0B4BE0 8011E4E0 2A020010 */   slti  $v0, $s0, 0x10
/* 0B4BE4 8011E4E4 26100001 */  addiu $s0, $s0, 1
/* 0B4BE8 8011E4E8 2A020010 */  slti  $v0, $s0, 0x10
/* 0B4BEC 8011E4EC 1440FFFA */  bnez  $v0, .L8011E4D8
/* 0B4BF0 8011E4F0 24630004 */   addiu $v1, $v1, 4
/* 0B4BF4 8011E4F4 2A020010 */  slti  $v0, $s0, 0x10
.L8011E4F8:
/* 0B4BF8 8011E4F8 14400003 */  bnez  $v0, .L8011E508
/* 0B4BFC 8011E4FC 00000000 */   nop   
.L8011E500:
/* 0B4C00 8011E500 08047940 */  j     .L8011E500
/* 0B4C04 8011E504 00000000 */   nop   

.L8011E508:
/* 0B4C08 8011E508 0C00AB39 */  jal   heap_malloc
/* 0B4C0C 8011E50C 240402E0 */   addiu $a0, $zero, 0x2e0
/* 0B4C10 8011E510 00102080 */  sll   $a0, $s0, 2
/* 0B4C14 8011E514 3C038015 */  lui   $v1, 0x8015
/* 0B4C18 8011E518 8C633A40 */  lw    $v1, 0x3a40($v1)
/* 0B4C1C 8011E51C 3C058015 */  lui   $a1, 0x8015
/* 0B4C20 8011E520 24A512D4 */  addiu $a1, $a1, 0x12d4
/* 0B4C24 8011E524 00832021 */  addu  $a0, $a0, $v1
/* 0B4C28 8011E528 8CA30000 */  lw    $v1, ($a1)
/* 0B4C2C 8011E52C 0040302D */  daddu $a2, $v0, $zero
/* 0B4C30 8011E530 AC860000 */  sw    $a2, ($a0)
/* 0B4C34 8011E534 24630001 */  addiu $v1, $v1, 1
/* 0B4C38 8011E538 14C00003 */  bnez  $a2, .L8011E548
/* 0B4C3C 8011E53C ACA30000 */   sw    $v1, ($a1)
.L8011E540:
/* 0B4C40 8011E540 08047950 */  j     .L8011E540
/* 0B4C44 8011E544 00000000 */   nop   

.L8011E548:
/* 0B4C48 8011E548 3C013F80 */  lui   $at, 0x3f80
/* 0B4C4C 8011E54C 44810000 */  mtc1  $at, $f0
/* 0B4C50 8011E550 24020057 */  addiu $v0, $zero, 0x57
/* 0B4C54 8011E554 ACC20000 */  sw    $v0, ($a2)
/* 0B4C58 8011E558 2402000D */  addiu $v0, $zero, 0xd
/* 0B4C5C 8011E55C A0C20004 */  sb    $v0, 4($a2)
/* 0B4C60 8011E560 ACD10008 */  sw    $s1, 8($a2)
/* 0B4C64 8011E564 E4C00090 */  swc1  $f0, 0x90($a2)
/* 0B4C68 8011E568 16200004 */  bnez  $s1, .L8011E57C
/* 0B4C6C 8011E56C E4C00094 */   swc1  $f0, 0x94($a2)
/* 0B4C70 8011E570 3C028015 */  lui   $v0, 0x8015
/* 0B4C74 8011E574 2442C250 */  addiu $v0, $v0, -0x3db0
/* 0B4C78 8011E578 ACC20008 */  sw    $v0, 8($a2)
.L8011E57C:
/* 0B4C7C 8011E57C 0000202D */  daddu $a0, $zero, $zero
/* 0B4C80 8011E580 ACD1000C */  sw    $s1, 0xc($a2)
/* 0B4C84 8011E584 ACC000DC */  sw    $zero, 0xdc($a2)
/* 0B4C88 8011E588 ACC000D8 */  sw    $zero, 0xd8($a2)
/* 0B4C8C 8011E58C ACC002D4 */  sw    $zero, 0x2d4($a2)
/* 0B4C90 8011E590 ACC00010 */  sw    $zero, 0x10($a2)
/* 0B4C94 8011E594 A0C00014 */  sb    $zero, 0x14($a2)
/* 0B4C98 8011E598 00C41821 */  addu  $v1, $a2, $a0
.L8011E59C:
/* 0B4C9C 8011E59C 24820001 */  addiu $v0, $a0, 1
/* 0B4CA0 8011E5A0 A0620015 */  sb    $v0, 0x15($v1)
/* 0B4CA4 8011E5A4 0040202D */  daddu $a0, $v0, $zero
/* 0B4CA8 8011E5A8 2882007A */  slti  $v0, $a0, 0x7a
/* 0B4CAC 8011E5AC 5440FFFB */  bnel  $v0, $zero, .L8011E59C
/* 0B4CB0 8011E5B0 00C41821 */   addu  $v1, $a2, $a0
/* 0B4CB4 8011E5B4 3C028007 */  lui   $v0, 0x8007
/* 0B4CB8 8011E5B8 8C42419C */  lw    $v0, 0x419c($v0)
/* 0B4CBC 8011E5BC 80420070 */  lb    $v0, 0x70($v0)
/* 0B4CC0 8011E5C0 54400001 */  bnel  $v0, $zero, .L8011E5C8
/* 0B4CC4 8011E5C4 36100800 */   ori   $s0, $s0, 0x800
.L8011E5C8:
/* 0B4CC8 8011E5C8 0200102D */  daddu $v0, $s0, $zero
/* 0B4CCC 8011E5CC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0B4CD0 8011E5D0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0B4CD4 8011E5D4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0B4CD8 8011E5D8 03E00008 */  jr    $ra
/* 0B4CDC 8011E5DC 27BD0020 */   addiu $sp, $sp, 0x20

