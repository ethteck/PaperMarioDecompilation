.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osViSetSpecialFeatures
/* 042260 80066E60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 042264 80066E64 AFB00010 */  sw    $s0, 0x10($sp)
/* 042268 80066E68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04226C 80066E6C 0C01ACD8 */  jal   __osDisableInt
/* 042270 80066E70 00808021 */   addu  $s0, $a0, $zero
/* 042274 80066E74 00403021 */  addu  $a2, $v0, $zero
/* 042278 80066E78 32020001 */  andi  $v0, $s0, 1
/* 04227C 80066E7C 10400007 */  beqz  $v0, .L80066E9C
/* 042280 80066E80 32020002 */   andi  $v0, $s0, 2
/* 042284 80066E84 3C038009 */  lui   $v1, 0x8009
/* 042288 80066E88 8C6359D4 */  lw    $v1, 0x59d4($v1)
/* 04228C 80066E8C 8C62000C */  lw    $v0, 0xc($v1)
/* 042290 80066E90 34420008 */  ori   $v0, $v0, 8
/* 042294 80066E94 AC62000C */  sw    $v0, 0xc($v1)
/* 042298 80066E98 32020002 */  andi  $v0, $s0, 2
.L80066E9C:
/* 04229C 80066E9C 10400006 */  beqz  $v0, .L80066EB8
/* 0422A0 80066EA0 2404FFF7 */   addiu $a0, $zero, -9
/* 0422A4 80066EA4 3C028009 */  lui   $v0, 0x8009
/* 0422A8 80066EA8 8C4259D4 */  lw    $v0, 0x59d4($v0)
/* 0422AC 80066EAC 8C43000C */  lw    $v1, 0xc($v0)
/* 0422B0 80066EB0 00641824 */  and   $v1, $v1, $a0
/* 0422B4 80066EB4 AC43000C */  sw    $v1, 0xc($v0)
.L80066EB8:
/* 0422B8 80066EB8 32020004 */  andi  $v0, $s0, 4
/* 0422BC 80066EBC 10400007 */  beqz  $v0, .L80066EDC
/* 0422C0 80066EC0 32020008 */   andi  $v0, $s0, 8
/* 0422C4 80066EC4 3C038009 */  lui   $v1, 0x8009
/* 0422C8 80066EC8 8C6359D4 */  lw    $v1, 0x59d4($v1)
/* 0422CC 80066ECC 8C62000C */  lw    $v0, 0xc($v1)
/* 0422D0 80066ED0 34420004 */  ori   $v0, $v0, 4
/* 0422D4 80066ED4 AC62000C */  sw    $v0, 0xc($v1)
/* 0422D8 80066ED8 32020008 */  andi  $v0, $s0, 8
.L80066EDC:
/* 0422DC 80066EDC 10400006 */  beqz  $v0, .L80066EF8
/* 0422E0 80066EE0 2404FFFB */   addiu $a0, $zero, -5
/* 0422E4 80066EE4 3C028009 */  lui   $v0, 0x8009
/* 0422E8 80066EE8 8C4259D4 */  lw    $v0, 0x59d4($v0)
/* 0422EC 80066EEC 8C43000C */  lw    $v1, 0xc($v0)
/* 0422F0 80066EF0 00641824 */  and   $v1, $v1, $a0
/* 0422F4 80066EF4 AC43000C */  sw    $v1, 0xc($v0)
.L80066EF8:
/* 0422F8 80066EF8 32020010 */  andi  $v0, $s0, 0x10
/* 0422FC 80066EFC 10400007 */  beqz  $v0, .L80066F1C
/* 042300 80066F00 32020020 */   andi  $v0, $s0, 0x20
/* 042304 80066F04 3C038009 */  lui   $v1, 0x8009
/* 042308 80066F08 8C6359D4 */  lw    $v1, 0x59d4($v1)
/* 04230C 80066F0C 8C62000C */  lw    $v0, 0xc($v1)
/* 042310 80066F10 34420010 */  ori   $v0, $v0, 0x10
/* 042314 80066F14 AC62000C */  sw    $v0, 0xc($v1)
/* 042318 80066F18 32020020 */  andi  $v0, $s0, 0x20
.L80066F1C:
/* 04231C 80066F1C 10400006 */  beqz  $v0, .L80066F38
/* 042320 80066F20 2404FFEF */   addiu $a0, $zero, -0x11
/* 042324 80066F24 3C028009 */  lui   $v0, 0x8009
/* 042328 80066F28 8C4259D4 */  lw    $v0, 0x59d4($v0)
/* 04232C 80066F2C 8C43000C */  lw    $v1, 0xc($v0)
/* 042330 80066F30 00641824 */  and   $v1, $v1, $a0
/* 042334 80066F34 AC43000C */  sw    $v1, 0xc($v0)
.L80066F38:
/* 042338 80066F38 32020040 */  andi  $v0, $s0, 0x40
/* 04233C 80066F3C 10400008 */  beqz  $v0, .L80066F60
/* 042340 80066F40 3C030001 */   lui   $v1, 1
/* 042344 80066F44 3C048009 */  lui   $a0, 0x8009
/* 042348 80066F48 8C8459D4 */  lw    $a0, 0x59d4($a0)
/* 04234C 80066F4C 8C82000C */  lw    $v0, 0xc($a0)
/* 042350 80066F50 00431025 */  or    $v0, $v0, $v1
/* 042354 80066F54 2403FCFF */  addiu $v1, $zero, -0x301
/* 042358 80066F58 00431024 */  and   $v0, $v0, $v1
/* 04235C 80066F5C AC82000C */  sw    $v0, 0xc($a0)
.L80066F60:
/* 042360 80066F60 32020080 */  andi  $v0, $s0, 0x80
/* 042364 80066F64 1040000C */  beqz  $v0, .L80066F98
/* 042368 80066F68 3C02FFFE */   lui   $v0, 0xfffe
/* 04236C 80066F6C 3C048009 */  lui   $a0, 0x8009
/* 042370 80066F70 8C8459D4 */  lw    $a0, 0x59d4($a0)
/* 042374 80066F74 8C83000C */  lw    $v1, 0xc($a0)
/* 042378 80066F78 8C850008 */  lw    $a1, 8($a0)
/* 04237C 80066F7C 3442FFFF */  ori   $v0, $v0, 0xffff
/* 042380 80066F80 00621824 */  and   $v1, $v1, $v0
/* 042384 80066F84 AC83000C */  sw    $v1, 0xc($a0)
/* 042388 80066F88 8CA20004 */  lw    $v0, 4($a1)
/* 04238C 80066F8C 30420300 */  andi  $v0, $v0, 0x300
/* 042390 80066F90 00621825 */  or    $v1, $v1, $v0
/* 042394 80066F94 AC83000C */  sw    $v1, 0xc($a0)
.L80066F98:
/* 042398 80066F98 3C038009 */  lui   $v1, 0x8009
/* 04239C 80066F9C 8C6359D4 */  lw    $v1, 0x59d4($v1)
/* 0423A0 80066FA0 94620000 */  lhu   $v0, ($v1)
/* 0423A4 80066FA4 00C02021 */  addu  $a0, $a2, $zero
/* 0423A8 80066FA8 34420008 */  ori   $v0, $v0, 8
/* 0423AC 80066FAC 0C01ACF4 */  jal   __osRestoreInt
/* 0423B0 80066FB0 A4620000 */   sh    $v0, ($v1)
/* 0423B4 80066FB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0423B8 80066FB8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0423BC 80066FBC 03E00008 */  jr    $ra
/* 0423C0 80066FC0 27BD0018 */   addiu $sp, $sp, 0x18

/* 0423C4 80066FC4 00000000 */  nop   
/* 0423C8 80066FC8 00000000 */  nop   
/* 0423CC 80066FCC 00000000 */  nop   


