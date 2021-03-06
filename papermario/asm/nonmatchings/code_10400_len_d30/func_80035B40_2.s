.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80035B40_2
/* 010F40 80035B40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 010F44 80035B44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 010F48 80035B48 0C0912F1 */  jal   func_80244BC4
/* 010F4C 80035B4C AFB00010 */   sw    $s0, 0x10($sp)
/* 010F50 80035B50 3C03800A */  lui   $v1, 0x800a
/* 010F54 80035B54 80630931 */  lb    $v1, 0x931($v1)
/* 010F58 80035B58 0040802D */  daddu $s0, $v0, $zero
/* 010F5C 80035B5C 2C620007 */  sltiu $v0, $v1, 7
/* 010F60 80035B60 10400069 */  beqz  $v0, .L80035D08
/* 010F64 80035B64 00031080 */   sll   $v0, $v1, 2
/* 010F68 80035B68 3C01800A */  lui   $at, 0x800a
/* 010F6C 80035B6C 00220821 */  addu  $at, $at, $v0
/* 010F70 80035B70 8C228300 */  lw    $v0, -0x7d00($at)
/* 010F74 80035B74 00400008 */  jr    $v0
/* 010F78 80035B78 00000000 */   nop   
/* 010F7C 80035B7C 0000282D */  daddu $a1, $zero, $zero
/* 010F80 80035B80 2404002C */  addiu $a0, $zero, 0x2c
/* 010F84 80035B84 0080382D */  daddu $a3, $a0, $zero
/* 010F88 80035B88 2406FFFF */  addiu $a2, $zero, -1
/* 010F8C 80035B8C 3C038016 */  lui   $v1, 0x8016
/* 010F90 80035B90 2463A2D0 */  addiu $v1, $v1, -0x5d30
.L80035B94:
/* 010F94 80035B94 80620003 */  lb    $v0, 3($v1)
/* 010F98 80035B98 10470003 */  beq   $v0, $a3, .L80035BA8
/* 010F9C 80035B9C 00000000 */   nop   
/* 010FA0 80035BA0 54460005 */  bnel  $v0, $a2, .L80035BB8
/* 010FA4 80035BA4 24840001 */   addiu $a0, $a0, 1
.L80035BA8:
/* 010FA8 80035BA8 90620000 */  lbu   $v0, ($v1)
/* 010FAC 80035BAC 30420008 */  andi  $v0, $v0, 8
/* 010FB0 80035BB0 00A22821 */  addu  $a1, $a1, $v0
/* 010FB4 80035BB4 24840001 */  addiu $a0, $a0, 1
.L80035BB8:
/* 010FB8 80035BB8 28820040 */  slti  $v0, $a0, 0x40
/* 010FBC 80035BBC 1440FFF5 */  bnez  $v0, .L80035B94
/* 010FC0 80035BC0 24630020 */   addiu $v1, $v1, 0x20
/* 010FC4 80035BC4 14A00050 */  bnez  $a1, .L80035D08
/* 010FC8 80035BC8 24020001 */   addiu $v0, $zero, 1
/* 010FCC 80035BCC 3C01800A */  lui   $at, 0x800a
/* 010FD0 80035BD0 A0220931 */  sb    $v0, 0x931($at)
/* 010FD4 80035BD4 0800D742 */  j     .L80035D08
/* 010FD8 80035BD8 00000000 */   nop   

/* 010FDC 80035BDC 12000008 */  beqz  $s0, .L80035C00
/* 010FE0 80035BE0 24020002 */   addiu $v0, $zero, 2
/* 010FE4 80035BE4 3C04800A */  lui   $a0, 0x800a
/* 010FE8 80035BE8 24840932 */  addiu $a0, $a0, 0x932
/* 010FEC 80035BEC 0C04E0AB */  jal   func_801382AC
/* 010FF0 80035BF0 00000000 */   nop   
/* 010FF4 80035BF4 00021400 */  sll   $v0, $v0, 0x10
/* 010FF8 80035BF8 10400043 */  beqz  $v0, .L80035D08
/* 010FFC 80035BFC 24020002 */   addiu $v0, $zero, 2
.L80035C00:
/* 011000 80035C00 3C01800A */  lui   $at, 0x800a
/* 011004 80035C04 A0220931 */  sb    $v0, 0x931($at)
/* 011008 80035C08 0800D742 */  j     .L80035D08
/* 01100C 80035C0C 00000000 */   nop   

/* 011010 80035C10 0C0912C0 */  jal   func_80244B00
/* 011014 80035C14 00000000 */   nop   
/* 011018 80035C18 0C051FB1 */  jal   func_80147EC4
/* 01101C 80035C1C 0000202D */   daddu $a0, $zero, $zero
/* 011020 80035C20 24020003 */  addiu $v0, $zero, 3
/* 011024 80035C24 3C01800A */  lui   $at, 0x800a
/* 011028 80035C28 A0220931 */  sb    $v0, 0x931($at)
/* 01102C 80035C2C 0C009C22 */  jal   func_80027088
/* 011030 80035C30 0000202D */   daddu $a0, $zero, $zero
/* 011034 80035C34 1600000B */  bnez  $s0, .L80035C64
/* 011038 80035C38 2402000A */   addiu $v0, $zero, 0xa
/* 01103C 80035C3C 0C00CD3C */  jal   set_game_mode
/* 011040 80035C40 24040002 */   addiu $a0, $zero, 2
/* 011044 80035C44 3C04FFFE */  lui   $a0, 0xfffe
/* 011048 80035C48 3C03800A */  lui   $v1, 0x800a
/* 01104C 80035C4C 2463A650 */  addiu $v1, $v1, -0x59b0
/* 011050 80035C50 8C620000 */  lw    $v0, ($v1)
/* 011054 80035C54 3484FFFF */  ori   $a0, $a0, 0xffff
/* 011058 80035C58 00441024 */  and   $v0, $v0, $a0
/* 01105C 80035C5C 0800D742 */  j     .L80035D08
/* 011060 80035C60 AC620000 */   sw    $v0, ($v1)

.L80035C64:
/* 011064 80035C64 3C01800A */  lui   $at, 0x800a
/* 011068 80035C68 A0220930 */  sb    $v0, 0x930($at)
/* 01106C 80035C6C 24020004 */  addiu $v0, $zero, 4
/* 011070 80035C70 3C01800A */  lui   $at, 0x800a
/* 011074 80035C74 A0220931 */  sb    $v0, 0x931($at)
/* 011078 80035C78 0800D742 */  j     .L80035D08
/* 01107C 80035C7C 00000000 */   nop   

/* 011080 80035C80 3C10800A */  lui   $s0, 0x800a
/* 011084 80035C84 26100930 */  addiu $s0, $s0, 0x930
/* 011088 80035C88 82020000 */  lb    $v0, ($s0)
/* 01108C 80035C8C 92030000 */  lbu   $v1, ($s0)
/* 011090 80035C90 18400003 */  blez  $v0, .L80035CA0
/* 011094 80035C94 2462FFFF */   addiu $v0, $v1, -1
/* 011098 80035C98 0800D742 */  j     .L80035D08
/* 01109C 80035C9C A2020000 */   sb    $v0, ($s0)

.L80035CA0:
/* 0110A0 80035CA0 3C014000 */  lui   $at, 0x4000
/* 0110A4 80035CA4 44816000 */  mtc1  $at, $f12
/* 0110A8 80035CA8 0C00AFB7 */  jal   func_8002BEDC
/* 0110AC 80035CAC 00000000 */   nop   
/* 0110B0 80035CB0 2402000A */  addiu $v0, $zero, 0xa
/* 0110B4 80035CB4 A2020000 */  sb    $v0, ($s0)
/* 0110B8 80035CB8 24020005 */  addiu $v0, $zero, 5
/* 0110BC 80035CBC 3C01800A */  lui   $at, 0x800a
/* 0110C0 80035CC0 A0220931 */  sb    $v0, 0x931($at)
/* 0110C4 80035CC4 0800D742 */  j     .L80035D08
/* 0110C8 80035CC8 00000000 */   nop   

/* 0110CC 80035CCC 3C04800A */  lui   $a0, 0x800a
/* 0110D0 80035CD0 24840930 */  addiu $a0, $a0, 0x930
/* 0110D4 80035CD4 80820000 */  lb    $v0, ($a0)
/* 0110D8 80035CD8 90830000 */  lbu   $v1, ($a0)
/* 0110DC 80035CDC 18400003 */  blez  $v0, .L80035CEC
/* 0110E0 80035CE0 2462FFFF */   addiu $v0, $v1, -1
/* 0110E4 80035CE4 0800D742 */  j     .L80035D08
/* 0110E8 80035CE8 A0820000 */   sb    $v0, ($a0)

.L80035CEC:
/* 0110EC 80035CEC 24020006 */  addiu $v0, $zero, 6
/* 0110F0 80035CF0 3C01800A */  lui   $at, 0x800a
/* 0110F4 80035CF4 A0220931 */  sb    $v0, 0x931($at)
/* 0110F8 80035CF8 0800D742 */  j     .L80035D08
/* 0110FC 80035CFC 00000000 */   nop   

/* 011100 80035D00 0C00CD3C */  jal   set_game_mode
/* 011104 80035D04 24040007 */   addiu $a0, $zero, 7
.L80035D08:
/* 011108 80035D08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01110C 80035D0C 8FB00010 */  lw    $s0, 0x10($sp)
/* 011110 80035D10 03E00008 */  jr    $ra
/* 011114 80035D14 27BD0018 */   addiu $sp, $sp, 0x18

