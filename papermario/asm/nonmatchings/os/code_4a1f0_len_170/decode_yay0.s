.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel decode_yay0
/* 04A1F0 8006EDF0 8C980004 */  lw    $t8, 4($a0)
/* 04A1F4 8006EDF4 8C870008 */  lw    $a3, 8($a0)
/* 04A1F8 8006EDF8 8C99000C */  lw    $t9, 0xc($a0)
/* 04A1FC 8006EDFC 0000302D */  daddu $a2, $zero, $zero
/* 04A200 8006EE00 0305C020 */  add   $t8, $t8, $a1
/* 04A204 8006EE04 00E43820 */  add   $a3, $a3, $a0
/* 04A208 8006EE08 0324C820 */  add   $t9, $t9, $a0
/* 04A20C 8006EE0C 20840010 */  addi  $a0, $a0, 0x10
.L8006EE10:
/* 04A210 8006EE10 14C00004 */  bnez  $a2, .L8006EE24
/* 04A214 8006EE14 00000000 */   nop   
/* 04A218 8006EE18 8C880000 */  lw    $t0, ($a0)
/* 04A21C 8006EE1C 24060020 */  addiu $a2, $zero, 0x20
/* 04A220 8006EE20 20840004 */  addi  $a0, $a0, 4
.L8006EE24:
/* 04A224 8006EE24 0100482A */  slt   $t1, $t0, $zero
/* 04A228 8006EE28 11200006 */  beqz  $t1, .L8006EE44
/* 04A22C 8006EE2C 00000000 */   nop   
/* 04A230 8006EE30 832A0000 */  lb    $t2, ($t9)
/* 04A234 8006EE34 23390001 */  addi  $t9, $t9, 1
/* 04A238 8006EE38 A0AA0000 */  sb    $t2, ($a1)
/* 04A23C 8006EE3C 1000000E */  b     .L8006EE78
/* 04A240 8006EE40 20A50001 */   addi  $a1, $a1, 1
.L8006EE44:
/* 04A244 8006EE44 94EA0000 */  lhu   $t2, ($a3)
/* 04A248 8006EE48 20E70002 */  addi  $a3, $a3, 2
/* 04A24C 8006EE4C 000A5B02 */  srl   $t3, $t2, 0xc
/* 04A250 8006EE50 314A0FFF */  andi  $t2, $t2, 0xfff
/* 04A254 8006EE54 1160000D */  beqz  $t3, .L8006EE8C
/* 04A258 8006EE58 00AA4822 */   sub   $t1, $a1, $t2
/* 04A25C 8006EE5C 216B0002 */  addi  $t3, $t3, 2
.L8006EE60:
/* 04A260 8006EE60 812AFFFF */  lb    $t2, -1($t1)
/* 04A264 8006EE64 216BFFFF */  addi  $t3, $t3, -1
/* 04A268 8006EE68 21290001 */  addi  $t1, $t1, 1
/* 04A26C 8006EE6C A0AA0000 */  sb    $t2, ($a1)
/* 04A270 8006EE70 1560FFFB */  bnez  $t3, .L8006EE60
/* 04A274 8006EE74 20A50001 */   addi  $a1, $a1, 1
.L8006EE78:
/* 04A278 8006EE78 00084040 */  sll   $t0, $t0, 1
/* 04A27C 8006EE7C 14B8FFE4 */  bne   $a1, $t8, .L8006EE10
/* 04A280 8006EE80 20C6FFFF */   addi  $a2, $a2, -1
/* 04A284 8006EE84 03E00008 */  jr    $ra
/* 04A288 8006EE88 00000000 */   nop   

.L8006EE8C:
/* 04A28C 8006EE8C 932B0000 */  lbu   $t3, ($t9)
/* 04A290 8006EE90 23390001 */  addi  $t9, $t9, 1
/* 04A294 8006EE94 1000FFF2 */  b     .L8006EE60
/* 04A298 8006EE98 216B0012 */   addi  $t3, $t3, 0x12
/* 04A29C 8006EE9C 00000000 */  nop   
/* 04A2A0 8006EEA0 308400FF */  andi  $a0, $a0, 0xff
/* 04A2A4 8006EEA4 30A500FF */  andi  $a1, $a1, 0xff
/* 04A2A8 8006EEA8 30C600FF */  andi  $a2, $a2, 0xff
/* 04A2AC 8006EEAC 30E700FF */  andi  $a3, $a3, 0xff
/* 04A2B0 8006EEB0 8FAE0010 */  lw    $t6, 0x10($sp)
/* 04A2B4 8006EEB4 3C01A000 */  lui   $at, 0xa000
/* 04A2B8 8006EEB8 01C17825 */  or    $t7, $t6, $at
/* 04A2BC 8006EEBC 3C01800B */  lui   $at, 0x800b
/* 04A2C0 8006EEC0 AC2F0C7C */  sw    $t7, 0xc7c($at)
/* 04A2C4 8006EEC4 3C18800B */  lui   $t8, 0x800b
/* 04A2C8 8006EEC8 93180C74 */  lbu   $t8, 0xc74($t8)
/* 04A2CC 8006EECC 00000000 */  nop   
/* 04A2D0 8006EED0 27190001 */  addiu $t9, $t8, 1
/* 04A2D4 8006EED4 3C01800B */  lui   $at, 0x800b
/* 04A2D8 8006EED8 A0390C74 */  sb    $t9, 0xc74($at)
/* 04A2DC 8006EEDC 3C01800B */  lui   $at, 0x800b
/* 04A2E0 8006EEE0 A0240C75 */  sb    $a0, 0xc75($at)
/* 04A2E4 8006EEE4 3C01800B */  lui   $at, 0x800b
/* 04A2E8 8006EEE8 A0250C78 */  sb    $a1, 0xc78($at)
/* 04A2EC 8006EEEC 3C01800B */  lui   $at, 0x800b
/* 04A2F0 8006EEF0 A0260C76 */  sb    $a2, 0xc76($at)
/* 04A2F4 8006EEF4 3C01800B */  lui   $at, 0x800b
/* 04A2F8 8006EEF8 A0270C77 */  sb    $a3, 0xc77($at)
/* 04A2FC 8006EEFC 24080001 */  addiu $t0, $zero, 1
/* 04A300 8006EF00 3C01800B */  lui   $at, 0x800b
/* 04A304 8006EF04 A0280C79 */  sb    $t0, 0xc79($at)
/* 04A308 8006EF08 3C02800B */  lui   $v0, 0x800b
/* 04A30C 8006EF0C 24420C70 */  addiu $v0, $v0, 0xc70
/* 04A310 8006EF10 03E00008 */  jr    $ra
/* 04A314 8006EF14 00000000 */   nop   

/* 04A318 8006EF18 03E00008 */  jr    $ra
/* 04A31C 8006EF1C 00000000 */   nop   

/* 04A320 8006EF20 03E00008 */  jr    $ra
/* 04A324 8006EF24 00000000 */   nop   

/* 04A328 8006EF28 00047440 */  sll   $t6, $a0, 0x11
/* 04A32C 8006EF2C 3C010800 */  lui   $at, 0x800
/* 04A330 8006EF30 01C17821 */  addu  $t7, $t6, $at
/* 04A334 8006EF34 3C01A000 */  lui   $at, 0xa000
/* 04A338 8006EF38 01E1C025 */  or    $t8, $t7, $at
/* 04A33C 8006EF3C 3C01800B */  lui   $at, 0x800b
/* 04A340 8006EF40 AC380C7C */  sw    $t8, 0xc7c($at)
/* 04A344 8006EF44 24990008 */  addiu $t9, $a0, 8
/* 04A348 8006EF48 3C01800B */  lui   $at, 0x800b
/* 04A34C 8006EF4C A0390C74 */  sb    $t9, 0xc74($at)
/* 04A350 8006EF50 03E00008 */  jr    $ra
/* 04A354 8006EF54 00000000 */   nop   

/* 04A358 8006EF58 03E00008 */  jr    $ra
/* 04A35C 8006EF5C 00000000 */   nop   


