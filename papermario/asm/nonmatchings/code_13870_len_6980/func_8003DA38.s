.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003DA38
/* 018E38 8003DA38 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 018E3C 8003DA3C AFB00018 */  sw    $s0, 0x18($sp)
/* 018E40 8003DA40 24020002 */  addiu $v0, $zero, 2
/* 018E44 8003DA44 AFBF0020 */  sw    $ra, 0x20($sp)
/* 018E48 8003DA48 AFB1001C */  sw    $s1, 0x1c($sp)
/* 018E4C 8003DA4C F7B80038 */  sdc1  $f24, 0x38($sp)
/* 018E50 8003DA50 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 018E54 8003DA54 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 018E58 8003DA58 14A20019 */  bne   $a1, $v0, .L8003DAC0
/* 018E5C 8003DA5C 0080802D */   daddu $s0, $a0, $zero
/* 018E60 8003DA60 3C118007 */  lui   $s1, 0x8007
/* 018E64 8003DA64 26317C1E */  addiu $s1, $s1, 0x7c1e
/* 018E68 8003DA68 86230000 */  lh    $v1, ($s1)
/* 018E6C 8003DA6C 24020005 */  addiu $v0, $zero, 5
/* 018E70 8003DA70 14620013 */  bne   $v1, $v0, .L8003DAC0
/* 018E74 8003DA74 00000000 */   nop   
/* 018E78 8003DA78 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 018E7C 8003DA7C 8E060040 */  lw    $a2, 0x40($s0)
/* 018E80 8003DA80 C600003C */  lwc1  $f0, 0x3c($s0)
/* 018E84 8003DA84 3C014160 */  lui   $at, 0x4160
/* 018E88 8003DA88 44817000 */  mtc1  $at, $f14
/* 018E8C 8003DA8C 3C108007 */  lui   $s0, 0x8007
/* 018E90 8003DA90 26107C18 */  addiu $s0, $s0, 0x7c18
/* 018E94 8003DA94 8E070000 */  lw    $a3, ($s0)
/* 018E98 8003DA98 0C01BEE4 */  jal   func_8006FB90
/* 018E9C 8003DA9C 460E0380 */   add.s $f14, $f0, $f14
/* 018EA0 8003DAA0 C6000000 */  lwc1  $f0, ($s0)
/* 018EA4 8003DAA4 3C01420C */  lui   $at, 0x420c
/* 018EA8 8003DAA8 44816000 */  mtc1  $at, $f12
/* 018EAC 8003DAAC 0C00A6C9 */  jal   clamp_angle
/* 018EB0 8003DAB0 460C0300 */   add.s $f12, $f0, $f12
/* 018EB4 8003DAB4 E6000000 */  swc1  $f0, ($s0)
/* 018EB8 8003DAB8 0800F706 */  j     .L8003DC18
/* 018EBC 8003DABC A6200000 */   sh    $zero, ($s1)

.L8003DAC0:
/* 018EC0 8003DAC0 3C038007 */  lui   $v1, 0x8007
/* 018EC4 8003DAC4 24637C1E */  addiu $v1, $v1, 0x7c1e
/* 018EC8 8003DAC8 94620000 */  lhu   $v0, ($v1)
/* 018ECC 8003DACC 24420001 */  addiu $v0, $v0, 1
/* 018ED0 8003DAD0 A4620000 */  sh    $v0, ($v1)
/* 018ED4 8003DAD4 00021400 */  sll   $v0, $v0, 0x10
/* 018ED8 8003DAD8 00021403 */  sra   $v0, $v0, 0x10
/* 018EDC 8003DADC 28420006 */  slti  $v0, $v0, 6
/* 018EE0 8003DAE0 14400002 */  bnez  $v0, .L8003DAEC
/* 018EE4 8003DAE4 24020005 */   addiu $v0, $zero, 5
/* 018EE8 8003DAE8 A4620000 */  sh    $v0, ($v1)
.L8003DAEC:
/* 018EEC 8003DAEC 3C048007 */  lui   $a0, 0x8007
/* 018EF0 8003DAF0 24847C1C */  addiu $a0, $a0, 0x7c1c
/* 018EF4 8003DAF4 94820000 */  lhu   $v0, ($a0)
/* 018EF8 8003DAF8 24430001 */  addiu $v1, $v0, 1
/* 018EFC 8003DAFC 00021400 */  sll   $v0, $v0, 0x10
/* 018F00 8003DB00 18400045 */  blez  $v0, .L8003DC18
/* 018F04 8003DB04 A4830000 */   sh    $v1, ($a0)
/* 018F08 8003DB08 C60C000C */  lwc1  $f12, 0xc($s0)
/* 018F0C 8003DB0C A4800000 */  sh    $zero, ($a0)
/* 018F10 8003DB10 0C00A6C9 */  jal   clamp_angle
/* 018F14 8003DB14 46006307 */   neg.s $f12, $f12
/* 018F18 8003DB18 3C0140C9 */  lui   $at, 0x40c9
/* 018F1C 8003DB1C 34210FD0 */  ori   $at, $at, 0xfd0
/* 018F20 8003DB20 44811000 */  mtc1  $at, $f2
/* 018F24 8003DB24 00000000 */  nop   
/* 018F28 8003DB28 46020502 */  mul.s $f20, $f0, $f2
/* 018F2C 8003DB2C 00000000 */  nop   
/* 018F30 8003DB30 3C0143B4 */  lui   $at, 0x43b4
/* 018F34 8003DB34 44810000 */  mtc1  $at, $f0
/* 018F38 8003DB38 00000000 */  nop   
/* 018F3C 8003DB3C 4600A503 */  div.s $f20, $f20, $f0
/* 018F40 8003DB40 0C00A85B */  jal   sin_rad
/* 018F44 8003DB44 4600A306 */   mov.s $f12, $f20
/* 018F48 8003DB48 4600A306 */  mov.s $f12, $f20
/* 018F4C 8003DB4C 0C00A874 */  jal   cos_rad
/* 018F50 8003DB50 46000506 */   mov.s $f20, $f0
/* 018F54 8003DB54 860200A6 */  lh    $v0, 0xa6($s0)
/* 018F58 8003DB58 44821000 */  mtc1  $v0, $f2
/* 018F5C 8003DB5C 00000000 */  nop   
/* 018F60 8003DB60 468010A0 */  cvt.s.w $f2, $f2
/* 018F64 8003DB64 46141502 */  mul.s $f20, $f2, $f20
/* 018F68 8003DB68 00000000 */  nop   
/* 018F6C 8003DB6C 46001082 */  mul.s $f2, $f2, $f0
/* 018F70 8003DB70 00000000 */  nop   
/* 018F74 8003DB74 3C01BECC */  lui   $at, 0xbecc
/* 018F78 8003DB78 3421CCCD */  ori   $at, $at, 0xcccd
/* 018F7C 8003DB7C 44810000 */  mtc1  $at, $f0
/* 018F80 8003DB80 00000000 */  nop   
/* 018F84 8003DB84 4600A502 */  mul.s $f20, $f20, $f0
/* 018F88 8003DB88 00000000 */  nop   
/* 018F8C 8003DB8C 46001082 */  mul.s $f2, $f2, $f0
/* 018F90 8003DB90 00000000 */  nop   
/* 018F94 8003DB94 C6000038 */  lwc1  $f0, 0x38($s0)
/* 018F98 8003DB98 46140600 */  add.s $f24, $f0, $f20
/* 018F9C 8003DB9C C6000040 */  lwc1  $f0, 0x40($s0)
/* 018FA0 8003DBA0 C604003C */  lwc1  $f4, 0x3c($s0)
/* 018FA4 8003DBA4 46020580 */  add.s $f22, $f0, $f2
/* 018FA8 8003DBA8 3C014178 */  lui   $at, 0x4178
/* 018FAC 8003DBAC 44810000 */  mtc1  $at, $f0
/* 018FB0 8003DBB0 2404000A */  addiu $a0, $zero, 0xa
/* 018FB4 8003DBB4 0C00A67F */  jal   rand_int
/* 018FB8 8003DBB8 46002500 */   add.s $f20, $f4, $f0
/* 018FBC 8003DBBC 24040001 */  addiu $a0, $zero, 1
/* 018FC0 8003DBC0 44821000 */  mtc1  $v0, $f2
/* 018FC4 8003DBC4 00000000 */  nop   
/* 018FC8 8003DBC8 468010A0 */  cvt.s.w $f2, $f2
/* 018FCC 8003DBCC C600000C */  lwc1  $f0, 0xc($s0)
/* 018FD0 8003DBD0 3C108007 */  lui   $s0, 0x8007
/* 018FD4 8003DBD4 26107C20 */  addiu $s0, $s0, 0x7c20
/* 018FD8 8003DBD8 4405C000 */  mfc1  $a1, $f24
/* 018FDC 8003DBDC 4407B000 */  mfc1  $a3, $f22
/* 018FE0 8003DBE0 46000007 */  neg.s $f0, $f0
/* 018FE4 8003DBE4 46020000 */  add.s $f0, $f0, $f2
/* 018FE8 8003DBE8 3C0140A0 */  lui   $at, 0x40a0
/* 018FEC 8003DBEC 44811000 */  mtc1  $at, $f2
/* 018FF0 8003DBF0 4406A000 */  mfc1  $a2, $f20
/* 018FF4 8003DBF4 46020001 */  sub.s $f0, $f0, $f2
/* 018FF8 8003DBF8 C6020000 */  lwc1  $f2, ($s0)
/* 018FFC 8003DBFC 468010A0 */  cvt.s.w $f2, $f2
/* 019000 8003DC00 E7A20014 */  swc1  $f2, 0x14($sp)
/* 019004 8003DC04 0C01BEFC */  jal   func_8006FBF0
/* 019008 8003DC08 E7A00010 */   swc1  $f0, 0x10($sp)
/* 01900C 8003DC0C 8E020000 */  lw    $v0, ($s0)
/* 019010 8003DC10 2C420001 */  sltiu $v0, $v0, 1
/* 019014 8003DC14 AE020000 */  sw    $v0, ($s0)
.L8003DC18:
/* 019018 8003DC18 8FBF0020 */  lw    $ra, 0x20($sp)
/* 01901C 8003DC1C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 019020 8003DC20 8FB00018 */  lw    $s0, 0x18($sp)
/* 019024 8003DC24 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 019028 8003DC28 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 01902C 8003DC2C D7B40028 */  ldc1  $f20, 0x28($sp)
/* 019030 8003DC30 03E00008 */  jr    $ra
/* 019034 8003DC34 27BD0040 */   addiu $sp, $sp, 0x40

