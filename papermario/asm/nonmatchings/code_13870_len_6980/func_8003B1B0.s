.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003B1B0
/* 0165B0 8003B1B0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0165B4 8003B1B4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0165B8 8003B1B8 0000902D */  daddu $s2, $zero, $zero
/* 0165BC 8003B1BC AFB40020 */  sw    $s4, 0x20($sp)
/* 0165C0 8003B1C0 3C144000 */  lui   $s4, 0x4000
/* 0165C4 8003B1C4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0165C8 8003B1C8 3C130100 */  lui   $s3, 0x100
/* 0165CC 8003B1CC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0165D0 8003B1D0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0165D4 8003B1D4 AFB00010 */  sw    $s0, 0x10($sp)
.L8003B1D8:
/* 0165D8 8003B1D8 3C03800A */  lui   $v1, 0x800a
/* 0165DC 8003B1DC 8C630B90 */  lw    $v1, 0xb90($v1)
/* 0165E0 8003B1E0 00121080 */  sll   $v0, $s2, 2
/* 0165E4 8003B1E4 00431021 */  addu  $v0, $v0, $v1
/* 0165E8 8003B1E8 8C510000 */  lw    $s1, ($v0)
/* 0165EC 8003B1EC 52200049 */  beql  $s1, $zero, .L8003B314
/* 0165F0 8003B1F0 26520001 */   addiu $s2, $s2, 1
/* 0165F4 8003B1F4 8E230000 */  lw    $v1, ($s1)
/* 0165F8 8003B1F8 50600046 */  beql  $v1, $zero, .L8003B314
/* 0165FC 8003B1FC 26520001 */   addiu $s2, $s2, 1
/* 016600 8003B200 00741024 */  and   $v0, $v1, $s4
/* 016604 8003B204 54400043 */  bnel  $v0, $zero, .L8003B314
/* 016608 8003B208 26520001 */   addiu $s2, $s2, 1
/* 01660C 8003B20C 00731024 */  and   $v0, $v1, $s3
/* 016610 8003B210 14400010 */  bnez  $v0, .L8003B254
/* 016614 8003B214 00741024 */   and   $v0, $v1, $s4
/* 016618 8003B218 3C020400 */  lui   $v0, 0x400
/* 01661C 8003B21C 00621024 */  and   $v0, $v1, $v0
/* 016620 8003B220 14400004 */  bnez  $v0, .L8003B234
/* 016624 8003B224 3C048000 */   lui   $a0, 0x8000
/* 016628 8003B228 8E240028 */  lw    $a0, 0x28($s1)
/* 01662C 8003B22C 0800EC90 */  j     .L8003B240
/* 016630 8003B230 8E2500B0 */   lw    $a1, 0xb0($s1)

.L8003B234:
/* 016634 8003B234 8E220028 */  lw    $v0, 0x28($s1)
/* 016638 8003B238 8E2500B0 */  lw    $a1, 0xb0($s1)
/* 01663C 8003B23C 00442025 */  or    $a0, $v0, $a0
.L8003B240:
/* 016640 8003B240 0C0B783B */  jal   func_802DE0EC
/* 016644 8003B244 00000000 */   nop   
/* 016648 8003B248 AE220024 */  sw    $v0, 0x24($s1)
/* 01664C 8003B24C 8E230000 */  lw    $v1, ($s1)
/* 016650 8003B250 00741024 */  and   $v0, $v1, $s4
.L8003B254:
/* 016654 8003B254 5440002F */  bnel  $v0, $zero, .L8003B314
/* 016658 8003B258 26520001 */   addiu $s2, $s2, 1
/* 01665C 8003B25C 00731024 */  and   $v0, $v1, $s3
/* 016660 8003B260 1440001A */  bnez  $v0, .L8003B2CC
/* 016664 8003B264 00000000 */   nop   
/* 016668 8003B268 822200B4 */  lb    $v0, 0xb4($s1)
/* 01666C 8003B26C 10400017 */  beqz  $v0, .L8003B2CC
/* 016670 8003B270 00000000 */   nop   
/* 016674 8003B274 0C0B7A90 */  jal   func_802DEA40
/* 016678 8003B278 96240028 */   lhu   $a0, 0x28($s1)
/* 01667C 8003B27C AE2200C4 */  sw    $v0, 0xc4($s1)
/* 016680 8003B280 0040202D */  daddu $a0, $v0, $zero
/* 016684 8003B284 A22000C1 */  sb    $zero, 0xc1($s1)
/* 016688 8003B288 8C830000 */  lw    $v1, ($a0)
/* 01668C 8003B28C 2402FFFF */  addiu $v0, $zero, -1
/* 016690 8003B290 1062000B */  beq   $v1, $v0, .L8003B2C0
/* 016694 8003B294 0080182D */   daddu $v1, $a0, $zero
/* 016698 8003B298 0040202D */  daddu $a0, $v0, $zero
.L8003B29C:
/* 01669C 8003B29C 922200C1 */  lbu   $v0, 0xc1($s1)
/* 0166A0 8003B2A0 24420001 */  addiu $v0, $v0, 1
/* 0166A4 8003B2A4 A22200C1 */  sb    $v0, 0xc1($s1)
/* 0166A8 8003B2A8 00021600 */  sll   $v0, $v0, 0x18
/* 0166AC 8003B2AC 00021583 */  sra   $v0, $v0, 0x16
/* 0166B0 8003B2B0 00431021 */  addu  $v0, $v0, $v1
/* 0166B4 8003B2B4 8C420000 */  lw    $v0, ($v0)
/* 0166B8 8003B2B8 1444FFF8 */  bne   $v0, $a0, .L8003B29C
/* 0166BC 8003B2BC 00000000 */   nop   
.L8003B2C0:
/* 0166C0 8003B2C0 0C0B7A9B */  jal   func_802DEA6C
/* 0166C4 8003B2C4 96240028 */   lhu   $a0, 0x28($s1)
/* 0166C8 8003B2C8 A22200C0 */  sb    $v0, 0xc0($s1)
.L8003B2CC:
/* 0166CC 8003B2CC 8E230000 */  lw    $v1, ($s1)
/* 0166D0 8003B2D0 00741024 */  and   $v0, $v1, $s4
/* 0166D4 8003B2D4 5440000F */  bnel  $v0, $zero, .L8003B314
/* 0166D8 8003B2D8 26520001 */   addiu $s2, $s2, 1
/* 0166DC 8003B2DC 00731024 */  and   $v0, $v1, $s3
/* 0166E0 8003B2E0 5440000C */  bnel  $v0, $zero, .L8003B314
/* 0166E4 8003B2E4 26520001 */   addiu $s2, $s2, 1
/* 0166E8 8003B2E8 0000802D */  daddu $s0, $zero, $zero
/* 0166EC 8003B2EC 0220202D */  daddu $a0, $s1, $zero
.L8003B2F0:
/* 0166F0 8003B2F0 0C00F187 */  jal   func_8003C61C
/* 0166F4 8003B2F4 0200282D */   daddu $a1, $s0, $zero
/* 0166F8 8003B2F8 26100001 */  addiu $s0, $s0, 1
/* 0166FC 8003B2FC 2A020002 */  slti  $v0, $s0, 2
/* 016700 8003B300 1440FFFB */  bnez  $v0, .L8003B2F0
/* 016704 8003B304 0220202D */   daddu $a0, $s1, $zero
/* 016708 8003B308 0C00F4EF */  jal   func_8003D3BC
/* 01670C 8003B30C 0220202D */   daddu $a0, $s1, $zero
/* 016710 8003B310 26520001 */  addiu $s2, $s2, 1
.L8003B314:
/* 016714 8003B314 2A420040 */  slti  $v0, $s2, 0x40
/* 016718 8003B318 1440FFAF */  bnez  $v0, .L8003B1D8
/* 01671C 8003B31C 00000000 */   nop   
/* 016720 8003B320 8FBF0024 */  lw    $ra, 0x24($sp)
/* 016724 8003B324 8FB40020 */  lw    $s4, 0x20($sp)
/* 016728 8003B328 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01672C 8003B32C 8FB20018 */  lw    $s2, 0x18($sp)
/* 016730 8003B330 8FB10014 */  lw    $s1, 0x14($sp)
/* 016734 8003B334 8FB00010 */  lw    $s0, 0x10($sp)
/* 016738 8003B338 03E00008 */  jr    $ra
/* 01673C 8003B33C 27BD0028 */   addiu $sp, $sp, 0x28

