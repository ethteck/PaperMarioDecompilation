.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003CFA8
/* 0183A8 8003CFA8 00852021 */  addu  $a0, $a0, $a1
/* 0183AC 8003CFAC 03E00008 */  jr    $ra
/* 0183B0 8003CFB0 A0800330 */   sb    $zero, 0x330($a0)

/* 0183B4 8003CFB4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0183B8 8003CFB8 F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 0183BC 8003CFBC 4486D000 */  mtc1  $a2, $f26
/* 0183C0 8003CFC0 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 0183C4 8003CFC4 46006606 */  mov.s $f24, $f12
/* 0183C8 8003CFC8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0183CC 8003CFCC 0000902D */  daddu $s2, $zero, $zero
/* 0183D0 8003CFD0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0183D4 8003CFD4 0240882D */  daddu $s1, $s2, $zero
/* 0183D8 8003CFD8 AFB40020 */  sw    $s4, 0x20($sp)
/* 0183DC 8003CFDC 3C140400 */  lui   $s4, 0x400
/* 0183E0 8003CFE0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0183E4 8003CFE4 3C138000 */  lui   $s3, 0x8000
/* 0183E8 8003CFE8 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0183EC 8003CFEC 4487A000 */  mtc1  $a3, $f20
/* 0183F0 8003CFF0 36730004 */  ori   $s3, $s3, 4
/* 0183F4 8003CFF4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0183F8 8003CFF8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0183FC 8003CFFC F7B60030 */  sdc1  $f22, 0x30($sp)
/* 018400 8003D000 4600A586 */  mov.s $f22, $f20
.L8003D004:
/* 018404 8003D004 3C03800A */  lui   $v1, 0x800a
/* 018408 8003D008 8C630B90 */  lw    $v1, 0xb90($v1)
/* 01840C 8003D00C 00111080 */  sll   $v0, $s1, 2
/* 018410 8003D010 00431021 */  addu  $v0, $v0, $v1
/* 018414 8003D014 8C500000 */  lw    $s0, ($v0)
/* 018418 8003D018 5200001B */  beql  $s0, $zero, .L8003D088
/* 01841C 8003D01C 26310001 */   addiu $s1, $s1, 1
/* 018420 8003D020 8E030000 */  lw    $v1, ($s0)
/* 018424 8003D024 50600018 */  beql  $v1, $zero, .L8003D088
/* 018428 8003D028 26310001 */   addiu $s1, $s1, 1
/* 01842C 8003D02C 00741024 */  and   $v0, $v1, $s4
/* 018430 8003D030 54400015 */  bnel  $v0, $zero, .L8003D088
/* 018434 8003D034 26310001 */   addiu $s1, $s1, 1
/* 018438 8003D038 00731024 */  and   $v0, $v1, $s3
/* 01843C 8003D03C 54400012 */  bnel  $v0, $zero, .L8003D088
/* 018440 8003D040 26310001 */   addiu $s1, $s1, 1
/* 018444 8003D044 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 018448 8003D048 C60E0040 */  lwc1  $f14, 0x40($s0)
/* 01844C 8003D04C 4406C000 */  mfc1  $a2, $f24
/* 018450 8003D050 4407D000 */  mfc1  $a3, $f26
/* 018454 8003D054 0C00A7B5 */  jal   dist2D
/* 018458 8003D058 00000000 */   nop   
/* 01845C 8003D05C 46000005 */  abs.s $f0, $f0
/* 018460 8003D060 4616003E */  c.le.s $f0, $f22
/* 018464 8003D064 00000000 */  nop   
/* 018468 8003D068 45000007 */  bc1f  .L8003D088
/* 01846C 8003D06C 26310001 */   addiu $s1, $s1, 1
/* 018470 8003D070 4614003C */  c.lt.s $f0, $f20
/* 018474 8003D074 00000000 */  nop   
/* 018478 8003D078 45000003 */  bc1f  .L8003D088
/* 01847C 8003D07C 00000000 */   nop   
/* 018480 8003D080 46000506 */  mov.s $f20, $f0
/* 018484 8003D084 0200902D */  daddu $s2, $s0, $zero
.L8003D088:
/* 018488 8003D088 2A220040 */  slti  $v0, $s1, 0x40
/* 01848C 8003D08C 1440FFDD */  bnez  $v0, .L8003D004
/* 018490 8003D090 0240102D */   daddu $v0, $s2, $zero
/* 018494 8003D094 8FBF0024 */  lw    $ra, 0x24($sp)
/* 018498 8003D098 8FB40020 */  lw    $s4, 0x20($sp)
/* 01849C 8003D09C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0184A0 8003D0A0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0184A4 8003D0A4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0184A8 8003D0A8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0184AC 8003D0AC D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 0184B0 8003D0B0 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 0184B4 8003D0B4 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 0184B8 8003D0B8 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0184BC 8003D0BC 03E00008 */  jr    $ra
/* 0184C0 8003D0C0 27BD0048 */   addiu $sp, $sp, 0x48

/* 0184C4 8003D0C4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0184C8 8003D0C8 F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 0184CC 8003D0CC 4486D000 */  mtc1  $a2, $f26
/* 0184D0 8003D0D0 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 0184D4 8003D0D4 46006606 */  mov.s $f24, $f12
/* 0184D8 8003D0D8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0184DC 8003D0DC 0000902D */  daddu $s2, $zero, $zero
/* 0184E0 8003D0E0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0184E4 8003D0E4 0240882D */  daddu $s1, $s2, $zero
/* 0184E8 8003D0E8 AFB40020 */  sw    $s4, 0x20($sp)
/* 0184EC 8003D0EC 3C140400 */  lui   $s4, 0x400
/* 0184F0 8003D0F0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0184F4 8003D0F4 3C138000 */  lui   $s3, 0x8000
/* 0184F8 8003D0F8 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0184FC 8003D0FC 4487A000 */  mtc1  $a3, $f20
/* 018500 8003D100 36730004 */  ori   $s3, $s3, 4
/* 018504 8003D104 AFBF0024 */  sw    $ra, 0x24($sp)
/* 018508 8003D108 AFB00010 */  sw    $s0, 0x10($sp)
/* 01850C 8003D10C F7B60030 */  sdc1  $f22, 0x30($sp)
/* 018510 8003D110 4600A586 */  mov.s $f22, $f20
.L8003D114:
/* 018514 8003D114 3C03800A */  lui   $v1, 0x800a
/* 018518 8003D118 8C630B90 */  lw    $v1, 0xb90($v1)
/* 01851C 8003D11C 00111080 */  sll   $v0, $s1, 2
/* 018520 8003D120 00431021 */  addu  $v0, $v0, $v1
/* 018524 8003D124 8C500000 */  lw    $s0, ($v0)
/* 018528 8003D128 5200001B */  beql  $s0, $zero, .L8003D198
/* 01852C 8003D12C 26310001 */   addiu $s1, $s1, 1
/* 018530 8003D130 8E030000 */  lw    $v1, ($s0)
/* 018534 8003D134 50600018 */  beql  $v1, $zero, .L8003D198
/* 018538 8003D138 26310001 */   addiu $s1, $s1, 1
/* 01853C 8003D13C 00741024 */  and   $v0, $v1, $s4
/* 018540 8003D140 50400015 */  beql  $v0, $zero, .L8003D198
/* 018544 8003D144 26310001 */   addiu $s1, $s1, 1
/* 018548 8003D148 00731024 */  and   $v0, $v1, $s3
/* 01854C 8003D14C 54400012 */  bnel  $v0, $zero, .L8003D198
/* 018550 8003D150 26310001 */   addiu $s1, $s1, 1
/* 018554 8003D154 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 018558 8003D158 C60E0040 */  lwc1  $f14, 0x40($s0)
/* 01855C 8003D15C 4406C000 */  mfc1  $a2, $f24
/* 018560 8003D160 4407D000 */  mfc1  $a3, $f26
/* 018564 8003D164 0C00A7B5 */  jal   dist2D
/* 018568 8003D168 00000000 */   nop   
/* 01856C 8003D16C 46000005 */  abs.s $f0, $f0
/* 018570 8003D170 4616003E */  c.le.s $f0, $f22
/* 018574 8003D174 00000000 */  nop   
/* 018578 8003D178 45000007 */  bc1f  .L8003D198
/* 01857C 8003D17C 26310001 */   addiu $s1, $s1, 1
/* 018580 8003D180 4614003C */  c.lt.s $f0, $f20
/* 018584 8003D184 00000000 */  nop   
/* 018588 8003D188 45000003 */  bc1f  .L8003D198
/* 01858C 8003D18C 00000000 */   nop   
/* 018590 8003D190 46000506 */  mov.s $f20, $f0
/* 018594 8003D194 0200902D */  daddu $s2, $s0, $zero
.L8003D198:
/* 018598 8003D198 2A220040 */  slti  $v0, $s1, 0x40
/* 01859C 8003D19C 1440FFDD */  bnez  $v0, .L8003D114
/* 0185A0 8003D1A0 0240102D */   daddu $v0, $s2, $zero
/* 0185A4 8003D1A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0185A8 8003D1A8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0185AC 8003D1AC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0185B0 8003D1B0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0185B4 8003D1B4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0185B8 8003D1B8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0185BC 8003D1BC D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 0185C0 8003D1C0 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 0185C4 8003D1C4 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 0185C8 8003D1C8 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0185CC 8003D1CC 03E00008 */  jr    $ra
/* 0185D0 8003D1D0 27BD0048 */   addiu $sp, $sp, 0x48

