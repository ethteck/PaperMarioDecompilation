.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003BA60
/* 016E60 8003BA60 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 016E64 8003BA64 AFB30024 */  sw    $s3, 0x24($sp)
/* 016E68 8003BA68 0080982D */  daddu $s3, $a0, $zero
/* 016E6C 8003BA6C AFB60030 */  sw    $s6, 0x30($sp)
/* 016E70 8003BA70 00A0B02D */  daddu $s6, $a1, $zero
/* 016E74 8003BA74 AFB40028 */  sw    $s4, 0x28($sp)
/* 016E78 8003BA78 00C0A02D */  daddu $s4, $a2, $zero
/* 016E7C 8003BA7C AFBF0038 */  sw    $ra, 0x38($sp)
/* 016E80 8003BA80 AFB70034 */  sw    $s7, 0x34($sp)
/* 016E84 8003BA84 AFB5002C */  sw    $s5, 0x2c($sp)
/* 016E88 8003BA88 AFB20020 */  sw    $s2, 0x20($sp)
/* 016E8C 8003BA8C AFB1001C */  sw    $s1, 0x1c($sp)
/* 016E90 8003BA90 AFB00018 */  sw    $s0, 0x18($sp)
/* 016E94 8003BA94 826200B6 */  lb    $v0, 0xb6($s3)
/* 016E98 8003BA98 10400049 */  beqz  $v0, .L8003BBC0
/* 016E9C 8003BA9C 00E0B82D */   daddu $s7, $a3, $zero
/* 016EA0 8003BAA0 8E620000 */  lw    $v0, ($s3)
/* 016EA4 8003BAA4 3C034000 */  lui   $v1, 0x4000
/* 016EA8 8003BAA8 00431024 */  and   $v0, $v0, $v1
/* 016EAC 8003BAAC 14400004 */  bnez  $v0, .L8003BAC0
/* 016EB0 8003BAB0 00000000 */   nop   
/* 016EB4 8003BAB4 0C0B7A90 */  jal   func_802DEA40
/* 016EB8 8003BAB8 96640028 */   lhu   $a0, 0x28($s3)
/* 016EBC 8003BABC AE6200C4 */  sw    $v0, 0xc4($s3)
.L8003BAC0:
/* 016EC0 8003BAC0 8E6400C4 */  lw    $a0, 0xc4($s3)
/* 016EC4 8003BAC4 A26000C1 */  sb    $zero, 0xc1($s3)
/* 016EC8 8003BAC8 8C830000 */  lw    $v1, ($a0)
/* 016ECC 8003BACC 2402FFFF */  addiu $v0, $zero, -1
/* 016ED0 8003BAD0 1062000B */  beq   $v1, $v0, .L8003BB00
/* 016ED4 8003BAD4 0080182D */   daddu $v1, $a0, $zero
/* 016ED8 8003BAD8 0040202D */  daddu $a0, $v0, $zero
.L8003BADC:
/* 016EDC 8003BADC 926200C1 */  lbu   $v0, 0xc1($s3)
/* 016EE0 8003BAE0 24420001 */  addiu $v0, $v0, 1
/* 016EE4 8003BAE4 A26200C1 */  sb    $v0, 0xc1($s3)
/* 016EE8 8003BAE8 00021600 */  sll   $v0, $v0, 0x18
/* 016EEC 8003BAEC 00021583 */  sra   $v0, $v0, 0x16
/* 016EF0 8003BAF0 00431021 */  addu  $v0, $v0, $v1
/* 016EF4 8003BAF4 8C420000 */  lw    $v0, ($v0)
/* 016EF8 8003BAF8 1444FFF8 */  bne   $v0, $a0, .L8003BADC
/* 016EFC 8003BAFC 00000000 */   nop   
.L8003BB00:
/* 016F00 8003BB00 826300B6 */  lb    $v1, 0xb6($s3)
/* 016F04 8003BB04 24020001 */  addiu $v0, $zero, 1
/* 016F08 8003BB08 14620004 */  bne   $v1, $v0, .L8003BB1C
/* 016F0C 8003BB0C 240200FF */   addiu $v0, $zero, 0xff
/* 016F10 8003BB10 A26000B7 */  sb    $zero, 0xb7($s3)
/* 016F14 8003BB14 0800EEC9 */  j     .L8003BB24
/* 016F18 8003BB18 A66000BE */   sh    $zero, 0xbe($s3)

.L8003BB1C:
/* 016F1C 8003BB1C A26000B7 */  sb    $zero, 0xb7($s3)
/* 016F20 8003BB20 A66200BE */  sh    $v0, 0xbe($s3)
.L8003BB24:
/* 016F24 8003BB24 826200C1 */  lb    $v0, 0xc1($s3)
/* 016F28 8003BB28 18400018 */  blez  $v0, .L8003BB8C
/* 016F2C 8003BB2C 0000202D */   daddu $a0, $zero, $zero
/* 016F30 8003BB30 0260302D */  daddu $a2, $s3, $zero
/* 016F34 8003BB34 240500C8 */  addiu $a1, $zero, 0xc8
.L8003BB38:
/* 016F38 8003BB38 8E6300C4 */  lw    $v1, 0xc4($s3)
/* 016F3C 8003BB3C 00041080 */  sll   $v0, $a0, 2
/* 016F40 8003BB40 00431021 */  addu  $v0, $v0, $v1
/* 016F44 8003BB44 8C520000 */  lw    $s2, ($v0)
/* 016F48 8003BB48 02658821 */  addu  $s1, $s3, $a1
/* 016F4C 8003BB4C 12400009 */  beqz  $s2, .L8003BB74
/* 016F50 8003BB50 ACD102C8 */   sw    $s1, 0x2c8($a2)
/* 016F54 8003BB54 0000802D */  daddu $s0, $zero, $zero
.L8003BB58:
/* 016F58 8003BB58 96420000 */  lhu   $v0, ($s2)
/* 016F5C 8003BB5C 26520002 */  addiu $s2, $s2, 2
/* 016F60 8003BB60 26100001 */  addiu $s0, $s0, 1
/* 016F64 8003BB64 A6220000 */  sh    $v0, ($s1)
/* 016F68 8003BB68 2A020010 */  slti  $v0, $s0, 0x10
/* 016F6C 8003BB6C 1440FFFA */  bnez  $v0, .L8003BB58
/* 016F70 8003BB70 26310002 */   addiu $s1, $s1, 2
.L8003BB74:
/* 016F74 8003BB74 24C60004 */  addiu $a2, $a2, 4
/* 016F78 8003BB78 826200C1 */  lb    $v0, 0xc1($s3)
/* 016F7C 8003BB7C 24840001 */  addiu $a0, $a0, 1
/* 016F80 8003BB80 0082102A */  slt   $v0, $a0, $v0
/* 016F84 8003BB84 1440FFEC */  bnez  $v0, .L8003BB38
/* 016F88 8003BB88 24A50020 */   addiu $a1, $a1, 0x20
.L8003BB8C:
/* 016F8C 8003BB8C 16800007 */  bnez  $s4, .L8003BBAC
/* 016F90 8003BB90 00000000 */   nop   
/* 016F94 8003BB94 9662030C */  lhu   $v0, 0x30c($s3)
/* 016F98 8003BB98 A660030C */  sh    $zero, 0x30c($s3)
/* 016F9C 8003BB9C A662030E */  sh    $v0, 0x30e($s3)
/* 016FA0 8003BBA0 0040182D */  daddu $v1, $v0, $zero
/* 016FA4 8003BBA4 A6620310 */  sh    $v0, 0x310($s3)
/* 016FA8 8003BBA8 A6630312 */  sh    $v1, 0x312($s3)
.L8003BBAC:
/* 016FAC 8003BBAC 9662030C */  lhu   $v0, 0x30c($s3)
/* 016FB0 8003BBB0 A66000BE */  sh    $zero, 0xbe($s3)
/* 016FB4 8003BBB4 A26000B7 */  sb    $zero, 0xb7($s3)
/* 016FB8 8003BBB8 A26000B6 */  sb    $zero, 0xb6($s3)
/* 016FBC 8003BBBC A66200BC */  sh    $v0, 0xbc($s3)
.L8003BBC0:
/* 016FC0 8003BBC0 826300B7 */  lb    $v1, 0xb7($s3)
/* 016FC4 8003BBC4 10600005 */  beqz  $v1, .L8003BBDC
/* 016FC8 8003BBC8 24020001 */   addiu $v0, $zero, 1
/* 016FCC 8003BBCC 1062000C */  beq   $v1, $v0, .L8003BC00
/* 016FD0 8003BBD0 24020002 */   addiu $v0, $zero, 2
/* 016FD4 8003BBD4 0800EF40 */  j     .L8003BD00
/* 016FD8 8003BBD8 00000000 */   nop   

.L8003BBDC:
/* 016FDC 8003BBDC 866200BC */  lh    $v0, 0xbc($s3)
/* 016FE0 8003BBE0 966300BC */  lhu   $v1, 0xbc($s3)
/* 016FE4 8003BBE4 10400003 */  beqz  $v0, .L8003BBF4
/* 016FE8 8003BBE8 2462FFFF */   addiu $v0, $v1, -1
/* 016FEC 8003BBEC 0800EF3E */  j     .L8003BCF8
/* 016FF0 8003BBF0 A66200BC */   sh    $v0, 0xbc($s3)

.L8003BBF4:
/* 016FF4 8003BBF4 24020001 */  addiu $v0, $zero, 1
/* 016FF8 8003BBF8 A66000BE */  sh    $zero, 0xbe($s3)
/* 016FFC 8003BBFC A26200B7 */  sb    $v0, 0xb7($s3)
.L8003BC00:
/* 017000 8003BC00 8662030E */  lh    $v0, 0x30e($s3)
/* 017004 8003BC04 24036400 */  addiu $v1, $zero, 0x6400
/* 017008 8003BC08 14400002 */  bnez  $v0, .L8003BC14
/* 01700C 8003BC0C 0062001A */   div   $zero, $v1, $v0
/* 017010 8003BC10 0007000D */  break 7
.L8003BC14:
/* 017014 8003BC14 2401FFFF */  addiu $at, $zero, -1
/* 017018 8003BC18 14410004 */  bne   $v0, $at, .L8003BC2C
/* 01701C 8003BC1C 3C018000 */   lui   $at, 0x8000
/* 017020 8003BC20 14610002 */  bne   $v1, $at, .L8003BC2C
/* 017024 8003BC24 00000000 */   nop   
/* 017028 8003BC28 0006000D */  break 6
.L8003BC2C:
/* 01702C 8003BC2C 00001812 */  mflo  $v1
/* 017030 8003BC30 966200BE */  lhu   $v0, 0xbe($s3)
/* 017034 8003BC34 00431021 */  addu  $v0, $v0, $v1
/* 017038 8003BC38 A66200BE */  sh    $v0, 0xbe($s3)
/* 01703C 8003BC3C 00021400 */  sll   $v0, $v0, 0x10
/* 017040 8003BC40 00021403 */  sra   $v0, $v0, 0x10
/* 017044 8003BC44 2842639D */  slti  $v0, $v0, 0x639d
/* 017048 8003BC48 14400003 */  bnez  $v0, .L8003BC58
/* 01704C 8003BC4C 3C0651EB */   lui   $a2, 0x51eb
/* 017050 8003BC50 2402639C */  addiu $v0, $zero, 0x639c
/* 017054 8003BC54 A66200BE */  sh    $v0, 0xbe($s3)
.L8003BC58:
/* 017058 8003BC58 34C6851F */  ori   $a2, $a2, 0x851f
/* 01705C 8003BC5C 267400C8 */  addiu $s4, $s3, 0xc8
/* 017060 8003BC60 0000802D */  daddu $s0, $zero, $zero
/* 017064 8003BC64 86620308 */  lh    $v0, 0x308($s3)
/* 017068 8003BC68 8E6500C4 */  lw    $a1, 0xc4($s3)
/* 01706C 8003BC6C 966300BE */  lhu   $v1, 0xbe($s3)
/* 017070 8003BC70 00021080 */  sll   $v0, $v0, 2
/* 017074 8003BC74 00451021 */  addu  $v0, $v0, $a1
/* 017078 8003BC78 00031C00 */  sll   $v1, $v1, 0x10
/* 01707C 8003BC7C 00032403 */  sra   $a0, $v1, 0x10
/* 017080 8003BC80 8C520000 */  lw    $s2, ($v0)
/* 017084 8003BC84 8662030A */  lh    $v0, 0x30a($s3)
/* 017088 8003BC88 00860018 */  mult  $a0, $a2
/* 01708C 8003BC8C 00021080 */  sll   $v0, $v0, 2
/* 017090 8003BC90 00451021 */  addu  $v0, $v0, $a1
/* 017094 8003BC94 8C510000 */  lw    $s1, ($v0)
/* 017098 8003BC98 00031FC3 */  sra   $v1, $v1, 0x1f
/* 01709C 8003BC9C AE7402C8 */  sw    $s4, 0x2c8($s3)
/* 0170A0 8003BCA0 00004010 */  mfhi  $t0
/* 0170A4 8003BCA4 00081143 */  sra   $v0, $t0, 5
/* 0170A8 8003BCA8 00431023 */  subu  $v0, $v0, $v1
/* 0170AC 8003BCAC 00021400 */  sll   $v0, $v0, 0x10
/* 0170B0 8003BCB0 0002AC03 */  sra   $s5, $v0, 0x10
.L8003BCB4:
/* 0170B4 8003BCB4 96440000 */  lhu   $a0, ($s2)
/* 0170B8 8003BCB8 26520002 */  addiu $s2, $s2, 2
/* 0170BC 8003BCBC 96250000 */  lhu   $a1, ($s1)
/* 0170C0 8003BCC0 26310002 */  addiu $s1, $s1, 2
/* 0170C4 8003BCC4 02A0302D */  daddu $a2, $s5, $zero
/* 0170C8 8003BCC8 0C00EE5B */  jal   func_8003B96C
/* 0170CC 8003BCCC 26100001 */   addiu $s0, $s0, 1
/* 0170D0 8003BCD0 A6820000 */  sh    $v0, ($s4)
/* 0170D4 8003BCD4 2A020010 */  slti  $v0, $s0, 0x10
/* 0170D8 8003BCD8 1440FFF6 */  bnez  $v0, .L8003BCB4
/* 0170DC 8003BCDC 26940002 */   addiu $s4, $s4, 2
/* 0170E0 8003BCE0 240200FF */  addiu $v0, $zero, 0xff
/* 0170E4 8003BCE4 16A20004 */  bne   $s5, $v0, .L8003BCF8
/* 0170E8 8003BCE8 24020002 */   addiu $v0, $zero, 2
/* 0170EC 8003BCEC 96630310 */  lhu   $v1, 0x310($s3)
/* 0170F0 8003BCF0 A26200B7 */  sb    $v0, 0xb7($s3)
/* 0170F4 8003BCF4 A66300BC */  sh    $v1, 0xbc($s3)
.L8003BCF8:
/* 0170F8 8003BCF8 826300B7 */  lb    $v1, 0xb7($s3)
/* 0170FC 8003BCFC 24020002 */  addiu $v0, $zero, 2
.L8003BD00:
/* 017100 8003BD00 10620005 */  beq   $v1, $v0, .L8003BD18
/* 017104 8003BD04 24020003 */   addiu $v0, $zero, 3
/* 017108 8003BD08 1062000A */  beq   $v1, $v0, .L8003BD34
/* 01710C 8003BD0C 00000000 */   nop   
/* 017110 8003BD10 0800EF8B */  j     .L8003BE2C
/* 017114 8003BD14 00000000 */   nop   

.L8003BD18:
/* 017118 8003BD18 866200BC */  lh    $v0, 0xbc($s3)
/* 01711C 8003BD1C 966300BC */  lhu   $v1, 0xbc($s3)
/* 017120 8003BD20 14400041 */  bnez  $v0, .L8003BE28
/* 017124 8003BD24 2462FFFF */   addiu $v0, $v1, -1
/* 017128 8003BD28 24020003 */  addiu $v0, $zero, 3
/* 01712C 8003BD2C A66000BE */  sh    $zero, 0xbe($s3)
/* 017130 8003BD30 A26200B7 */  sb    $v0, 0xb7($s3)
.L8003BD34:
/* 017134 8003BD34 86620312 */  lh    $v0, 0x312($s3)
/* 017138 8003BD38 24036400 */  addiu $v1, $zero, 0x6400
/* 01713C 8003BD3C 14400002 */  bnez  $v0, .L8003BD48
/* 017140 8003BD40 0062001A */   div   $zero, $v1, $v0
/* 017144 8003BD44 0007000D */  break 7
.L8003BD48:
/* 017148 8003BD48 2401FFFF */  addiu $at, $zero, -1
/* 01714C 8003BD4C 14410004 */  bne   $v0, $at, .L8003BD60
/* 017150 8003BD50 3C018000 */   lui   $at, 0x8000
/* 017154 8003BD54 14610002 */  bne   $v1, $at, .L8003BD60
/* 017158 8003BD58 00000000 */   nop   
/* 01715C 8003BD5C 0006000D */  break 6
.L8003BD60:
/* 017160 8003BD60 00001812 */  mflo  $v1
/* 017164 8003BD64 966200BE */  lhu   $v0, 0xbe($s3)
/* 017168 8003BD68 00431021 */  addu  $v0, $v0, $v1
/* 01716C 8003BD6C A66200BE */  sh    $v0, 0xbe($s3)
/* 017170 8003BD70 00021400 */  sll   $v0, $v0, 0x10
/* 017174 8003BD74 00021403 */  sra   $v0, $v0, 0x10
/* 017178 8003BD78 2842639D */  slti  $v0, $v0, 0x639d
/* 01717C 8003BD7C 14400003 */  bnez  $v0, .L8003BD8C
/* 017180 8003BD80 3C0651EB */   lui   $a2, 0x51eb
/* 017184 8003BD84 2402639C */  addiu $v0, $zero, 0x639c
/* 017188 8003BD88 A66200BE */  sh    $v0, 0xbe($s3)
.L8003BD8C:
/* 01718C 8003BD8C 34C6851F */  ori   $a2, $a2, 0x851f
/* 017190 8003BD90 267400C8 */  addiu $s4, $s3, 0xc8
/* 017194 8003BD94 0000802D */  daddu $s0, $zero, $zero
/* 017198 8003BD98 8662030A */  lh    $v0, 0x30a($s3)
/* 01719C 8003BD9C 8E6500C4 */  lw    $a1, 0xc4($s3)
/* 0171A0 8003BDA0 966300BE */  lhu   $v1, 0xbe($s3)
/* 0171A4 8003BDA4 00021080 */  sll   $v0, $v0, 2
/* 0171A8 8003BDA8 00451021 */  addu  $v0, $v0, $a1
/* 0171AC 8003BDAC 00031C00 */  sll   $v1, $v1, 0x10
/* 0171B0 8003BDB0 00032403 */  sra   $a0, $v1, 0x10
/* 0171B4 8003BDB4 8C520000 */  lw    $s2, ($v0)
/* 0171B8 8003BDB8 86620308 */  lh    $v0, 0x308($s3)
/* 0171BC 8003BDBC 00860018 */  mult  $a0, $a2
/* 0171C0 8003BDC0 00021080 */  sll   $v0, $v0, 2
/* 0171C4 8003BDC4 00451021 */  addu  $v0, $v0, $a1
/* 0171C8 8003BDC8 8C510000 */  lw    $s1, ($v0)
/* 0171CC 8003BDCC 00031FC3 */  sra   $v1, $v1, 0x1f
/* 0171D0 8003BDD0 AE7402C8 */  sw    $s4, 0x2c8($s3)
/* 0171D4 8003BDD4 00004010 */  mfhi  $t0
/* 0171D8 8003BDD8 00081143 */  sra   $v0, $t0, 5
/* 0171DC 8003BDDC 00431023 */  subu  $v0, $v0, $v1
/* 0171E0 8003BDE0 00021400 */  sll   $v0, $v0, 0x10
/* 0171E4 8003BDE4 0002AC03 */  sra   $s5, $v0, 0x10
.L8003BDE8:
/* 0171E8 8003BDE8 96440000 */  lhu   $a0, ($s2)
/* 0171EC 8003BDEC 26520002 */  addiu $s2, $s2, 2
/* 0171F0 8003BDF0 96250000 */  lhu   $a1, ($s1)
/* 0171F4 8003BDF4 26310002 */  addiu $s1, $s1, 2
/* 0171F8 8003BDF8 02A0302D */  daddu $a2, $s5, $zero
/* 0171FC 8003BDFC 0C00EE5B */  jal   func_8003B96C
/* 017200 8003BE00 26100001 */   addiu $s0, $s0, 1
/* 017204 8003BE04 A6820000 */  sh    $v0, ($s4)
/* 017208 8003BE08 2A020010 */  slti  $v0, $s0, 0x10
/* 01720C 8003BE0C 1440FFF6 */  bnez  $v0, .L8003BDE8
/* 017210 8003BE10 26940002 */   addiu $s4, $s4, 2
/* 017214 8003BE14 240200FF */  addiu $v0, $zero, 0xff
/* 017218 8003BE18 16A20004 */  bne   $s5, $v0, .L8003BE2C
/* 01721C 8003BE1C 00000000 */   nop   
/* 017220 8003BE20 9662030C */  lhu   $v0, 0x30c($s3)
/* 017224 8003BE24 A26000B7 */  sb    $zero, 0xb7($s3)
.L8003BE28:
/* 017228 8003BE28 A66200BC */  sh    $v0, 0xbc($s3)
.L8003BE2C:
/* 01722C 8003BE2C 826300B7 */  lb    $v1, 0xb7($s3)
/* 017230 8003BE30 28620004 */  slti  $v0, $v1, 4
/* 017234 8003BE34 1040001D */  beqz  $v0, .L8003BEAC
/* 017238 8003BE38 00000000 */   nop   
/* 01723C 8003BE3C 0460001B */  bltz  $v1, .L8003BEAC
/* 017240 8003BE40 3C034000 */   lui   $v1, 0x4000
/* 017244 8003BE44 8E620000 */  lw    $v0, ($s3)
/* 017248 8003BE48 00431024 */  and   $v0, $v0, $v1
/* 01724C 8003BE4C 14400017 */  bnez  $v0, .L8003BEAC
/* 017250 8003BE50 02C0282D */   daddu $a1, $s6, $zero
/* 017254 8003BE54 926300AC */  lbu   $v1, 0xac($s3)
/* 017258 8003BE58 926200AD */  lbu   $v0, 0xad($s3)
/* 01725C 8003BE5C 00620018 */  mult  $v1, $v0
/* 017260 8003BE60 00001812 */  mflo  $v1
/* 017264 8003BE64 3C028080 */  lui   $v0, 0x8080
/* 017268 8003BE68 34428081 */  ori   $v0, $v0, 0x8081
/* 01726C 8003BE6C 00620018 */  mult  $v1, $v0
/* 017270 8003BE70 8E660024 */  lw    $a2, 0x24($s3)
/* 017274 8003BE74 266702C8 */  addiu $a3, $s3, 0x2c8
/* 017278 8003BE78 AFB70010 */  sw    $s7, 0x10($sp)
/* 01727C 8003BE7C 00004810 */  mfhi  $t1
/* 017280 8003BE80 01231021 */  addu  $v0, $t1, $v1
/* 017284 8003BE84 000211C3 */  sra   $v0, $v0, 7
/* 017288 8003BE88 00031FC3 */  sra   $v1, $v1, 0x1f
/* 01728C 8003BE8C 0043A823 */  subu  $s5, $v0, $v1
/* 017290 8003BE90 2AA400FF */  slti  $a0, $s5, 0xff
/* 017294 8003BE94 000427C0 */  sll   $a0, $a0, 0x1f
/* 017298 8003BE98 3C022000 */  lui   $v0, 0x2000
/* 01729C 8003BE9C 00822025 */  or    $a0, $a0, $v0
/* 0172A0 8003BEA0 00C42025 */  or    $a0, $a2, $a0
/* 0172A4 8003BEA4 0C0B78F6 */  jal   func_802DE3D8
/* 0172A8 8003BEA8 02A0302D */   daddu $a2, $s5, $zero
.L8003BEAC:
/* 0172AC 8003BEAC 8FBF0038 */  lw    $ra, 0x38($sp)
/* 0172B0 8003BEB0 8FB70034 */  lw    $s7, 0x34($sp)
/* 0172B4 8003BEB4 8FB60030 */  lw    $s6, 0x30($sp)
/* 0172B8 8003BEB8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0172BC 8003BEBC 8FB40028 */  lw    $s4, 0x28($sp)
/* 0172C0 8003BEC0 8FB30024 */  lw    $s3, 0x24($sp)
/* 0172C4 8003BEC4 8FB20020 */  lw    $s2, 0x20($sp)
/* 0172C8 8003BEC8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0172CC 8003BECC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0172D0 8003BED0 03E00008 */  jr    $ra
/* 0172D4 8003BED4 27BD0040 */   addiu $sp, $sp, 0x40

