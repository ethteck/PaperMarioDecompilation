.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8006DDC0
/* 0491C0 8006DDC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0491C4 8006DDC4 AFB20010 */  sw    $s2, 0x10($sp)
/* 0491C8 8006DDC8 0000902D */  daddu $s2, $zero, $zero
/* 0491CC 8006DDCC AFB1000C */  sw    $s1, 0xc($sp)
/* 0491D0 8006DDD0 04810008 */  bgez  $a0, .L8006DDF4
/* 0491D4 8006DDD4 AFB00008 */   sw    $s0, 8($sp)
/* 0491D8 8006DDD8 2412FFFF */  addiu $s2, $zero, -1
/* 0491DC 8006DDDC 00054823 */  negu  $t1, $a1
/* 0491E0 8006DDE0 00041823 */  negu  $v1, $a0
/* 0491E4 8006DDE4 0009102B */  sltu  $v0, $zero, $t1
/* 0491E8 8006DDE8 00624023 */  subu  $t0, $v1, $v0
/* 0491EC 8006DDEC 0100202D */  daddu $a0, $t0, $zero
/* 0491F0 8006DDF0 0120282D */  daddu $a1, $t1, $zero
.L8006DDF4:
/* 0491F4 8006DDF4 04C10008 */  bgez  $a2, .L8006DE18
/* 0491F8 8006DDF8 00E0402D */   daddu $t0, $a3, $zero
/* 0491FC 8006DDFC 00075823 */  negu  $t3, $a3
/* 049200 8006DE00 00061823 */  negu  $v1, $a2
/* 049204 8006DE04 000B102B */  sltu  $v0, $zero, $t3
/* 049208 8006DE08 00625023 */  subu  $t2, $v1, $v0
/* 04920C 8006DE0C 0140302D */  daddu $a2, $t2, $zero
/* 049210 8006DE10 0160382D */  daddu $a3, $t3, $zero
/* 049214 8006DE14 00E0402D */  daddu $t0, $a3, $zero
.L8006DE18:
/* 049218 8006DE18 00C0482D */  daddu $t1, $a2, $zero
/* 04921C 8006DE1C 00A0582D */  daddu $t3, $a1, $zero
/* 049220 8006DE20 0080502D */  daddu $t2, $a0, $zero
/* 049224 8006DE24 152000A6 */  bnez  $t1, .L8006E0C0
/* 049228 8006DE28 03A0C82D */   daddu $t9, $sp, $zero
/* 04922C 8006DE2C 0148102B */  sltu  $v0, $t2, $t0
/* 049230 8006DE30 1040001D */  beqz  $v0, .L8006DEA8
/* 049234 8006DE34 3402FFFF */   ori   $v0, $zero, 0xffff
/* 049238 8006DE38 0048102B */  sltu  $v0, $v0, $t0
/* 04923C 8006DE3C 14400005 */  bnez  $v0, .L8006DE54
/* 049240 8006DE40 00E0182D */   daddu $v1, $a3, $zero
/* 049244 8006DE44 2D020100 */  sltiu $v0, $t0, 0x100
/* 049248 8006DE48 38420001 */  xori  $v0, $v0, 1
/* 04924C 8006DE4C 0801B79B */  j     .L8006DE6C
/* 049250 8006DE50 000220C0 */   sll   $a0, $v0, 3

.L8006DE54:
/* 049254 8006DE54 3C0200FF */  lui   $v0, 0xff
/* 049258 8006DE58 3442FFFF */  ori   $v0, $v0, 0xffff
/* 04925C 8006DE5C 0048102B */  sltu  $v0, $v0, $t0
/* 049260 8006DE60 14400002 */  bnez  $v0, .L8006DE6C
/* 049264 8006DE64 24040018 */   addiu $a0, $zero, 0x18
/* 049268 8006DE68 24040010 */  addiu $a0, $zero, 0x10
.L8006DE6C:
/* 04926C 8006DE6C 00831006 */  srlv  $v0, $v1, $a0
/* 049270 8006DE70 3C01800A */  lui   $at, 0x800a
/* 049274 8006DE74 00220821 */  addu  $at, $at, $v0
/* 049278 8006DE78 90229F40 */  lbu   $v0, -0x60c0($at)
/* 04927C 8006DE7C 00441021 */  addu  $v0, $v0, $a0
/* 049280 8006DE80 24040020 */  addiu $a0, $zero, 0x20
/* 049284 8006DE84 00826823 */  subu  $t5, $a0, $v0
/* 049288 8006DE88 11A0005B */  beqz  $t5, .L8006DFF8
/* 04928C 8006DE8C 01AA1804 */   sllv  $v1, $t2, $t5
/* 049290 8006DE90 01A84004 */  sllv  $t0, $t0, $t5
/* 049294 8006DE94 008D1023 */  subu  $v0, $a0, $t5
/* 049298 8006DE98 004B1006 */  srlv  $v0, $t3, $v0
/* 04929C 8006DE9C 00625025 */  or    $t2, $v1, $v0
/* 0492A0 8006DEA0 0801B7FE */  j     .L8006DFF8
/* 0492A4 8006DEA4 01AB5804 */   sllv  $t3, $t3, $t5

.L8006DEA8:
/* 0492A8 8006DEA8 15000008 */  bnez  $t0, .L8006DECC
/* 0492AC 8006DEAC 0048102B */   sltu  $v0, $v0, $t0
/* 0492B0 8006DEB0 24020001 */  addiu $v0, $zero, 1
/* 0492B4 8006DEB4 15200002 */  bnez  $t1, .L8006DEC0
/* 0492B8 8006DEB8 0049001B */   divu  $zero, $v0, $t1
/* 0492BC 8006DEBC 0007000D */  break 7
.L8006DEC0:
/* 0492C0 8006DEC0 00004012 */  mflo  $t0
/* 0492C4 8006DEC4 3402FFFF */  ori   $v0, $zero, 0xffff
/* 0492C8 8006DEC8 0048102B */  sltu  $v0, $v0, $t0
.L8006DECC:
/* 0492CC 8006DECC 14400005 */  bnez  $v0, .L8006DEE4
/* 0492D0 8006DED0 0100202D */   daddu $a0, $t0, $zero
/* 0492D4 8006DED4 2D020100 */  sltiu $v0, $t0, 0x100
/* 0492D8 8006DED8 38420001 */  xori  $v0, $v0, 1
/* 0492DC 8006DEDC 0801B7BF */  j     .L8006DEFC
/* 0492E0 8006DEE0 000218C0 */   sll   $v1, $v0, 3

.L8006DEE4:
/* 0492E4 8006DEE4 3C0200FF */  lui   $v0, 0xff
/* 0492E8 8006DEE8 3442FFFF */  ori   $v0, $v0, 0xffff
/* 0492EC 8006DEEC 0048102B */  sltu  $v0, $v0, $t0
/* 0492F0 8006DEF0 14400002 */  bnez  $v0, .L8006DEFC
/* 0492F4 8006DEF4 24030018 */   addiu $v1, $zero, 0x18
/* 0492F8 8006DEF8 24030010 */  addiu $v1, $zero, 0x10
.L8006DEFC:
/* 0492FC 8006DEFC 00641006 */  srlv  $v0, $a0, $v1
/* 049300 8006DF00 3C01800A */  lui   $at, 0x800a
/* 049304 8006DF04 00220821 */  addu  $at, $at, $v0
/* 049308 8006DF08 90229F40 */  lbu   $v0, -0x60c0($at)
/* 04930C 8006DF0C 00431021 */  addu  $v0, $v0, $v1
/* 049310 8006DF10 24030020 */  addiu $v1, $zero, 0x20
/* 049314 8006DF14 00626823 */  subu  $t5, $v1, $v0
/* 049318 8006DF18 15A00003 */  bnez  $t5, .L8006DF28
/* 04931C 8006DF1C 006DC023 */   subu  $t8, $v1, $t5
/* 049320 8006DF20 0801B7FE */  j     .L8006DFF8
/* 049324 8006DF24 01485023 */   subu  $t2, $t2, $t0

.L8006DF28:
/* 049328 8006DF28 01A84004 */  sllv  $t0, $t0, $t5
/* 04932C 8006DF2C 030A2006 */  srlv  $a0, $t2, $t8
/* 049330 8006DF30 01AA1804 */  sllv  $v1, $t2, $t5
/* 049334 8006DF34 030B1006 */  srlv  $v0, $t3, $t8
/* 049338 8006DF38 00625025 */  or    $t2, $v1, $v0
/* 04933C 8006DF3C 00082C02 */  srl   $a1, $t0, 0x10
/* 049340 8006DF40 14A00002 */  bnez  $a1, .L8006DF4C
/* 049344 8006DF44 0085001B */   divu  $zero, $a0, $a1
/* 049348 8006DF48 0007000D */  break 7
.L8006DF4C:
/* 04934C 8006DF4C 00001012 */  mflo  $v0
/* 049350 8006DF50 00001810 */  mfhi  $v1
/* 049354 8006DF54 3106FFFF */  andi  $a2, $t0, 0xffff
/* 049358 8006DF58 00000000 */  nop   
/* 04935C 8006DF5C 00460018 */  mult  $v0, $a2
/* 049360 8006DF60 00031C00 */  sll   $v1, $v1, 0x10
/* 049364 8006DF64 000A1402 */  srl   $v0, $t2, 0x10
/* 049368 8006DF68 00621825 */  or    $v1, $v1, $v0
/* 04936C 8006DF6C 00002012 */  mflo  $a0
/* 049370 8006DF70 0064102B */  sltu  $v0, $v1, $a0
/* 049374 8006DF74 10400008 */  beqz  $v0, .L8006DF98
/* 049378 8006DF78 01AB5804 */   sllv  $t3, $t3, $t5
/* 04937C 8006DF7C 00681821 */  addu  $v1, $v1, $t0
/* 049380 8006DF80 0068102B */  sltu  $v0, $v1, $t0
/* 049384 8006DF84 54400005 */  bnel  $v0, $zero, .L8006DF9C
/* 049388 8006DF88 00641823 */   subu  $v1, $v1, $a0
/* 04938C 8006DF8C 0064102B */  sltu  $v0, $v1, $a0
/* 049390 8006DF90 54400001 */  bnel  $v0, $zero, .L8006DF98
/* 049394 8006DF94 00681821 */   addu  $v1, $v1, $t0
.L8006DF98:
/* 049398 8006DF98 00641823 */  subu  $v1, $v1, $a0
.L8006DF9C:
/* 04939C 8006DF9C 14A00002 */  bnez  $a1, .L8006DFA8
/* 0493A0 8006DFA0 0065001B */   divu  $zero, $v1, $a1
/* 0493A4 8006DFA4 0007000D */  break 7
.L8006DFA8:
/* 0493A8 8006DFA8 00001012 */  mflo  $v0
/* 0493AC 8006DFAC 00001810 */  mfhi  $v1
/* 0493B0 8006DFB0 00000000 */  nop   
/* 0493B4 8006DFB4 00000000 */  nop   
/* 0493B8 8006DFB8 00460018 */  mult  $v0, $a2
/* 0493BC 8006DFBC 00031C00 */  sll   $v1, $v1, 0x10
/* 0493C0 8006DFC0 3142FFFF */  andi  $v0, $t2, 0xffff
/* 0493C4 8006DFC4 00621825 */  or    $v1, $v1, $v0
/* 0493C8 8006DFC8 00002012 */  mflo  $a0
/* 0493CC 8006DFCC 0064102B */  sltu  $v0, $v1, $a0
/* 0493D0 8006DFD0 50400009 */  beql  $v0, $zero, .L8006DFF8
/* 0493D4 8006DFD4 00645023 */   subu  $t2, $v1, $a0
/* 0493D8 8006DFD8 00681821 */  addu  $v1, $v1, $t0
/* 0493DC 8006DFDC 0068102B */  sltu  $v0, $v1, $t0
/* 0493E0 8006DFE0 14400005 */  bnez  $v0, .L8006DFF8
/* 0493E4 8006DFE4 00645023 */   subu  $t2, $v1, $a0
/* 0493E8 8006DFE8 0064102B */  sltu  $v0, $v1, $a0
/* 0493EC 8006DFEC 54400001 */  bnel  $v0, $zero, .L8006DFF4
/* 0493F0 8006DFF0 00681821 */   addu  $v1, $v1, $t0
.L8006DFF4:
/* 0493F4 8006DFF4 00645023 */  subu  $t2, $v1, $a0
.L8006DFF8:
/* 0493F8 8006DFF8 00082C02 */  srl   $a1, $t0, 0x10
/* 0493FC 8006DFFC 14A00002 */  bnez  $a1, .L8006E008
/* 049400 8006E000 0145001B */   divu  $zero, $t2, $a1
/* 049404 8006E004 0007000D */  break 7
.L8006E008:
/* 049408 8006E008 00001012 */  mflo  $v0
/* 04940C 8006E00C 00001810 */  mfhi  $v1
/* 049410 8006E010 3106FFFF */  andi  $a2, $t0, 0xffff
/* 049414 8006E014 00000000 */  nop   
/* 049418 8006E018 00460018 */  mult  $v0, $a2
/* 04941C 8006E01C 00031C00 */  sll   $v1, $v1, 0x10
/* 049420 8006E020 000B1402 */  srl   $v0, $t3, 0x10
/* 049424 8006E024 00621825 */  or    $v1, $v1, $v0
/* 049428 8006E028 00002012 */  mflo  $a0
/* 04942C 8006E02C 0064102B */  sltu  $v0, $v1, $a0
/* 049430 8006E030 50400009 */  beql  $v0, $zero, .L8006E058
/* 049434 8006E034 00641823 */   subu  $v1, $v1, $a0
/* 049438 8006E038 00681821 */  addu  $v1, $v1, $t0
/* 04943C 8006E03C 0068102B */  sltu  $v0, $v1, $t0
/* 049440 8006E040 54400005 */  bnel  $v0, $zero, .L8006E058
/* 049444 8006E044 00641823 */   subu  $v1, $v1, $a0
/* 049448 8006E048 0064102B */  sltu  $v0, $v1, $a0
/* 04944C 8006E04C 54400001 */  bnel  $v0, $zero, .L8006E054
/* 049450 8006E050 00681821 */   addu  $v1, $v1, $t0
.L8006E054:
/* 049454 8006E054 00641823 */  subu  $v1, $v1, $a0
.L8006E058:
/* 049458 8006E058 14A00002 */  bnez  $a1, .L8006E064
/* 04945C 8006E05C 0065001B */   divu  $zero, $v1, $a1
/* 049460 8006E060 0007000D */  break 7
.L8006E064:
/* 049464 8006E064 00001012 */  mflo  $v0
/* 049468 8006E068 00001810 */  mfhi  $v1
/* 04946C 8006E06C 00000000 */  nop   
/* 049470 8006E070 00000000 */  nop   
/* 049474 8006E074 00460018 */  mult  $v0, $a2
/* 049478 8006E078 00031C00 */  sll   $v1, $v1, 0x10
/* 04947C 8006E07C 3162FFFF */  andi  $v0, $t3, 0xffff
/* 049480 8006E080 00621825 */  or    $v1, $v1, $v0
/* 049484 8006E084 00002012 */  mflo  $a0
/* 049488 8006E088 0064102B */  sltu  $v0, $v1, $a0
/* 04948C 8006E08C 10400007 */  beqz  $v0, .L8006E0AC
/* 049490 8006E090 00000000 */   nop   
/* 049494 8006E094 00681821 */  addu  $v1, $v1, $t0
/* 049498 8006E098 0068102B */  sltu  $v0, $v1, $t0
/* 04949C 8006E09C 14400003 */  bnez  $v0, .L8006E0AC
/* 0494A0 8006E0A0 0064102B */   sltu  $v0, $v1, $a0
/* 0494A4 8006E0A4 54400001 */  bnel  $v0, $zero, .L8006E0AC
/* 0494A8 8006E0A8 00681821 */   addu  $v1, $v1, $t0
.L8006E0AC:
/* 0494AC 8006E0AC 13200087 */  beqz  $t9, .L8006E2CC
/* 0494B0 8006E0B0 00645823 */   subu  $t3, $v1, $a0
/* 0494B4 8006E0B4 01AB7806 */  srlv  $t7, $t3, $t5
/* 0494B8 8006E0B8 0801B8B1 */  j     .L8006E2C4
/* 0494BC 8006E0BC 0000702D */   daddu $t6, $zero, $zero

.L8006E0C0:
/* 0494C0 8006E0C0 0149102B */  sltu  $v0, $t2, $t1
/* 0494C4 8006E0C4 10400007 */  beqz  $v0, .L8006E0E4
/* 0494C8 8006E0C8 3402FFFF */   ori   $v0, $zero, 0xffff
/* 0494CC 8006E0CC 00A0782D */  daddu $t7, $a1, $zero
/* 0494D0 8006E0D0 0140702D */  daddu $t6, $t2, $zero
/* 0494D4 8006E0D4 AFAE0000 */  sw    $t6, ($sp)
/* 0494D8 8006E0D8 AFAF0004 */  sw    $t7, 4($sp)
/* 0494DC 8006E0DC 0801B8B3 */  j     .L8006E2CC
/* 0494E0 8006E0E0 00000000 */   nop   

.L8006E0E4:
/* 0494E4 8006E0E4 0049102B */  sltu  $v0, $v0, $t1
/* 0494E8 8006E0E8 14400005 */  bnez  $v0, .L8006E100
/* 0494EC 8006E0EC 0120202D */   daddu $a0, $t1, $zero
/* 0494F0 8006E0F0 2D220100 */  sltiu $v0, $t1, 0x100
/* 0494F4 8006E0F4 38420001 */  xori  $v0, $v0, 1
/* 0494F8 8006E0F8 0801B846 */  j     .L8006E118
/* 0494FC 8006E0FC 000218C0 */   sll   $v1, $v0, 3

.L8006E100:
/* 049500 8006E100 3C0200FF */  lui   $v0, 0xff
/* 049504 8006E104 3442FFFF */  ori   $v0, $v0, 0xffff
/* 049508 8006E108 0049102B */  sltu  $v0, $v0, $t1
/* 04950C 8006E10C 14400002 */  bnez  $v0, .L8006E118
/* 049510 8006E110 24030018 */   addiu $v1, $zero, 0x18
/* 049514 8006E114 24030010 */  addiu $v1, $zero, 0x10
.L8006E118:
/* 049518 8006E118 00641006 */  srlv  $v0, $a0, $v1
/* 04951C 8006E11C 3C01800A */  lui   $at, 0x800a
/* 049520 8006E120 00220821 */  addu  $at, $at, $v0
/* 049524 8006E124 90229F40 */  lbu   $v0, -0x60c0($at)
/* 049528 8006E128 00431021 */  addu  $v0, $v0, $v1
/* 04952C 8006E12C 24030020 */  addiu $v1, $zero, 0x20
/* 049530 8006E130 00626823 */  subu  $t5, $v1, $v0
/* 049534 8006E134 15A0000F */  bnez  $t5, .L8006E174
/* 049538 8006E138 006DC023 */   subu  $t8, $v1, $t5
/* 04953C 8006E13C 012A102B */  sltu  $v0, $t1, $t2
/* 049540 8006E140 14400004 */  bnez  $v0, .L8006E154
/* 049544 8006E144 01682023 */   subu  $a0, $t3, $t0
/* 049548 8006E148 0168102B */  sltu  $v0, $t3, $t0
/* 04954C 8006E14C 14400005 */  bnez  $v0, .L8006E164
/* 049550 8006E150 00000000 */   nop   
.L8006E154:
/* 049554 8006E154 01491823 */  subu  $v1, $t2, $t1
/* 049558 8006E158 0164102B */  sltu  $v0, $t3, $a0
/* 04955C 8006E15C 00625023 */  subu  $t2, $v1, $v0
/* 049560 8006E160 0080582D */  daddu $t3, $a0, $zero
.L8006E164:
/* 049564 8006E164 13200059 */  beqz  $t9, .L8006E2CC
/* 049568 8006E168 0160782D */   daddu $t7, $t3, $zero
/* 04956C 8006E16C 0801B8B1 */  j     .L8006E2C4
/* 049570 8006E170 0140702D */   daddu $t6, $t2, $zero

.L8006E174:
/* 049574 8006E174 01A91804 */  sllv  $v1, $t1, $t5
/* 049578 8006E178 03081006 */  srlv  $v0, $t0, $t8
/* 04957C 8006E17C 00624825 */  or    $t1, $v1, $v0
/* 049580 8006E180 01A84004 */  sllv  $t0, $t0, $t5
/* 049584 8006E184 030A2006 */  srlv  $a0, $t2, $t8
/* 049588 8006E188 01AA1804 */  sllv  $v1, $t2, $t5
/* 04958C 8006E18C 030B1006 */  srlv  $v0, $t3, $t8
/* 049590 8006E190 00625025 */  or    $t2, $v1, $v0
/* 049594 8006E194 00093402 */  srl   $a2, $t1, 0x10
/* 049598 8006E198 14C00002 */  bnez  $a2, .L8006E1A4
/* 04959C 8006E19C 0086001B */   divu  $zero, $a0, $a2
/* 0495A0 8006E1A0 0007000D */  break 7
.L8006E1A4:
/* 0495A4 8006E1A4 00003812 */  mflo  $a3
/* 0495A8 8006E1A8 00001810 */  mfhi  $v1
/* 0495AC 8006E1AC 312CFFFF */  andi  $t4, $t1, 0xffff
/* 0495B0 8006E1B0 00000000 */  nop   
/* 0495B4 8006E1B4 00EC0018 */  mult  $a3, $t4
/* 0495B8 8006E1B8 000A1402 */  srl   $v0, $t2, 0x10
/* 0495BC 8006E1BC 00031C00 */  sll   $v1, $v1, 0x10
/* 0495C0 8006E1C0 00621825 */  or    $v1, $v1, $v0
/* 0495C4 8006E1C4 00002812 */  mflo  $a1
/* 0495C8 8006E1C8 0065102B */  sltu  $v0, $v1, $a1
/* 0495CC 8006E1CC 1040000A */  beqz  $v0, .L8006E1F8
/* 0495D0 8006E1D0 01AB5804 */   sllv  $t3, $t3, $t5
/* 0495D4 8006E1D4 00691821 */  addu  $v1, $v1, $t1
/* 0495D8 8006E1D8 0069102B */  sltu  $v0, $v1, $t1
/* 0495DC 8006E1DC 14400006 */  bnez  $v0, .L8006E1F8
/* 0495E0 8006E1E0 24E7FFFF */   addiu $a3, $a3, -1
/* 0495E4 8006E1E4 0065102B */  sltu  $v0, $v1, $a1
/* 0495E8 8006E1E8 50400004 */  beql  $v0, $zero, .L8006E1FC
/* 0495EC 8006E1EC 00651823 */   subu  $v1, $v1, $a1
/* 0495F0 8006E1F0 24E7FFFF */  addiu $a3, $a3, -1
/* 0495F4 8006E1F4 00691821 */  addu  $v1, $v1, $t1
.L8006E1F8:
/* 0495F8 8006E1F8 00651823 */  subu  $v1, $v1, $a1
.L8006E1FC:
/* 0495FC 8006E1FC 14C00002 */  bnez  $a2, .L8006E208
/* 049600 8006E200 0066001B */   divu  $zero, $v1, $a2
/* 049604 8006E204 0007000D */  break 7
.L8006E208:
/* 049608 8006E208 00002012 */  mflo  $a0
/* 04960C 8006E20C 00001810 */  mfhi  $v1
/* 049610 8006E210 00000000 */  nop   
/* 049614 8006E214 00000000 */  nop   
/* 049618 8006E218 008C0018 */  mult  $a0, $t4
/* 04961C 8006E21C 3142FFFF */  andi  $v0, $t2, 0xffff
/* 049620 8006E220 00031C00 */  sll   $v1, $v1, 0x10
/* 049624 8006E224 00621825 */  or    $v1, $v1, $v0
/* 049628 8006E228 00002812 */  mflo  $a1
/* 04962C 8006E22C 0065102B */  sltu  $v0, $v1, $a1
/* 049630 8006E230 5040000B */  beql  $v0, $zero, .L8006E260
/* 049634 8006E234 00655023 */   subu  $t2, $v1, $a1
/* 049638 8006E238 00691821 */  addu  $v1, $v1, $t1
/* 04963C 8006E23C 0069102B */  sltu  $v0, $v1, $t1
/* 049640 8006E240 14400006 */  bnez  $v0, .L8006E25C
/* 049644 8006E244 2484FFFF */   addiu $a0, $a0, -1
/* 049648 8006E248 0065102B */  sltu  $v0, $v1, $a1
/* 04964C 8006E24C 10400004 */  beqz  $v0, .L8006E260
/* 049650 8006E250 00655023 */   subu  $t2, $v1, $a1
/* 049654 8006E254 2484FFFF */  addiu $a0, $a0, -1
/* 049658 8006E258 00691821 */  addu  $v1, $v1, $t1
.L8006E25C:
/* 04965C 8006E25C 00655023 */  subu  $t2, $v1, $a1
.L8006E260:
/* 049660 8006E260 00071400 */  sll   $v0, $a3, 0x10
/* 049664 8006E264 00441025 */  or    $v0, $v0, $a0
/* 049668 8006E268 00480019 */  multu $v0, $t0
/* 04966C 8006E26C 00003010 */  mfhi  $a2
/* 049670 8006E270 0146102B */  sltu  $v0, $t2, $a2
/* 049674 8006E274 00002812 */  mflo  $a1
/* 049678 8006E278 54400005 */  bnel  $v0, $zero, .L8006E290
/* 04967C 8006E27C 00A82023 */   subu  $a0, $a1, $t0
/* 049680 8006E280 14CA0007 */  bne   $a2, $t2, .L8006E2A0
/* 049684 8006E284 0165102B */   sltu  $v0, $t3, $a1
/* 049688 8006E288 10400005 */  beqz  $v0, .L8006E2A0
/* 04968C 8006E28C 00A82023 */   subu  $a0, $a1, $t0
.L8006E290:
/* 049690 8006E290 00C91823 */  subu  $v1, $a2, $t1
/* 049694 8006E294 00A4102B */  sltu  $v0, $a1, $a0
/* 049698 8006E298 00623023 */  subu  $a2, $v1, $v0
/* 04969C 8006E29C 0080282D */  daddu $a1, $a0, $zero
.L8006E2A0:
/* 0496A0 8006E2A0 1320000A */  beqz  $t9, .L8006E2CC
/* 0496A4 8006E2A4 01651823 */   subu  $v1, $t3, $a1
/* 0496A8 8006E2A8 01462023 */  subu  $a0, $t2, $a2
/* 0496AC 8006E2AC 0163102B */  sltu  $v0, $t3, $v1
/* 0496B0 8006E2B0 00825023 */  subu  $t2, $a0, $v0
/* 0496B4 8006E2B4 030A1004 */  sllv  $v0, $t2, $t8
/* 0496B8 8006E2B8 01A31806 */  srlv  $v1, $v1, $t5
/* 0496BC 8006E2BC 00437825 */  or    $t7, $v0, $v1
/* 0496C0 8006E2C0 01AA7006 */  srlv  $t6, $t2, $t5
.L8006E2C4:
/* 0496C4 8006E2C4 AF2E0000 */  sw    $t6, ($t9)
/* 0496C8 8006E2C8 AF2F0004 */  sw    $t7, 4($t9)
.L8006E2CC:
/* 0496CC 8006E2CC 12400009 */  beqz  $s2, .L8006E2F4
/* 0496D0 8006E2D0 00000000 */   nop   
/* 0496D4 8006E2D4 8FA20000 */  lw    $v0, ($sp)
/* 0496D8 8006E2D8 8FA30004 */  lw    $v1, 4($sp)
/* 0496DC 8006E2DC 00038823 */  negu  $s1, $v1
/* 0496E0 8006E2E0 00021023 */  negu  $v0, $v0
/* 0496E4 8006E2E4 0011202B */  sltu  $a0, $zero, $s1
/* 0496E8 8006E2E8 00448023 */  subu  $s0, $v0, $a0
/* 0496EC 8006E2EC AFB00000 */  sw    $s0, ($sp)
/* 0496F0 8006E2F0 AFB10004 */  sw    $s1, 4($sp)
.L8006E2F4:
/* 0496F4 8006E2F4 8FA20000 */  lw    $v0, ($sp)
/* 0496F8 8006E2F8 8FA30004 */  lw    $v1, 4($sp)
/* 0496FC 8006E2FC 8FB20010 */  lw    $s2, 0x10($sp)
/* 049700 8006E300 8FB1000C */  lw    $s1, 0xc($sp)
/* 049704 8006E304 8FB00008 */  lw    $s0, 8($sp)
/* 049708 8006E308 03E00008 */  jr    $ra
/* 04970C 8006E30C 27BD0018 */   addiu $sp, $sp, 0x18

