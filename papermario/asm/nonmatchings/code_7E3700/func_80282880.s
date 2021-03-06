.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80282880
/* 7E3700 80282880 3C028011 */  lui   $v0, 0x8011
/* 7E3704 80282884 2442EFC8 */  addiu $v0, $v0, -0x1038
/* 7E3708 80282888 C4420028 */  lwc1  $f2, 0x28($v0)
/* 7E370C 8028288C C4800084 */  lwc1  $f0, 0x84($a0)
/* 7E3710 80282890 46800020 */  cvt.s.w $f0, $f0
/* 7E3714 80282894 46020001 */  sub.s $f0, $f0, $f2
/* 7E3718 80282898 3C013F00 */  lui   $at, 0x3f00
/* 7E371C 8028289C 44812000 */  mtc1  $at, $f4
/* 7E3720 802828A0 00000000 */  nop   
/* 7E3724 802828A4 46040002 */  mul.s $f0, $f0, $f4
/* 7E3728 802828A8 00000000 */  nop   
/* 7E372C 802828AC 46001080 */  add.s $f2, $f2, $f0
/* 7E3730 802828B0 E4420028 */  swc1  $f2, 0x28($v0)
/* 7E3734 802828B4 C4420030 */  lwc1  $f2, 0x30($v0)
/* 7E3738 802828B8 C480008C */  lwc1  $f0, 0x8c($a0)
/* 7E373C 802828BC 46800020 */  cvt.s.w $f0, $f0
/* 7E3740 802828C0 46020001 */  sub.s $f0, $f0, $f2
/* 7E3744 802828C4 46040002 */  mul.s $f0, $f0, $f4
/* 7E3748 802828C8 00000000 */  nop   
/* 7E374C 802828CC 46001080 */  add.s $f2, $f2, $f0
/* 7E3750 802828D0 E4420030 */  swc1  $f2, 0x30($v0)
/* 7E3754 802828D4 03E00008 */  jr    $ra
/* 7E3758 802828D8 24020002 */   addiu $v0, $zero, 2

/* 7E375C 802828DC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 7E3760 802828E0 AFB20018 */  sw    $s2, 0x18($sp)
/* 7E3764 802828E4 0080902D */  daddu $s2, $a0, $zero
/* 7E3768 802828E8 AFBF0020 */  sw    $ra, 0x20($sp)
/* 7E376C 802828EC AFB3001C */  sw    $s3, 0x1c($sp)
/* 7E3770 802828F0 AFB10014 */  sw    $s1, 0x14($sp)
/* 7E3774 802828F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 7E3778 802828F8 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 7E377C 802828FC F7B60030 */  sdc1  $f22, 0x30($sp)
/* 7E3780 80282900 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 7E3784 80282904 8E4400B0 */  lw    $a0, 0xb0($s2)
/* 7E3788 80282908 0C04417A */  jal   get_entity_by_index
/* 7E378C 8028290C 00A0802D */   daddu $s0, $a1, $zero
/* 7E3790 80282910 3C138011 */  lui   $s3, 0x8011
/* 7E3794 80282914 2673EFC8 */  addiu $s3, $s3, -0x1038
/* 7E3798 80282918 1200001A */  beqz  $s0, .L80282984
/* 7E379C 8028291C 0040882D */   daddu $s1, $v0, $zero
/* 7E37A0 80282920 AE400070 */  sw    $zero, 0x70($s2)
/* 7E37A4 80282924 C6600028 */  lwc1  $f0, 0x28($s3)
/* 7E37A8 80282928 4600018D */  trunc.w.s $f6, $f0
/* 7E37AC 8028292C E6460084 */  swc1  $f6, 0x84($s2)
/* 7E37B0 80282930 C660002C */  lwc1  $f0, 0x2c($s3)
/* 7E37B4 80282934 4600018D */  trunc.w.s $f6, $f0
/* 7E37B8 80282938 E6460088 */  swc1  $f6, 0x88($s2)
/* 7E37BC 8028293C C6600030 */  lwc1  $f0, 0x30($s3)
/* 7E37C0 80282940 4600018D */  trunc.w.s $f6, $f0
/* 7E37C4 80282944 E646008C */  swc1  $f6, 0x8c($s2)
/* 7E37C8 80282948 C6200048 */  lwc1  $f0, 0x48($s1)
/* 7E37CC 8028294C 4600018D */  trunc.w.s $f6, $f0
/* 7E37D0 80282950 E6460090 */  swc1  $f6, 0x90($s2)
/* 7E37D4 80282954 C620004C */  lwc1  $f0, 0x4c($s1)
/* 7E37D8 80282958 4600018D */  trunc.w.s $f6, $f0
/* 7E37DC 8028295C E6460094 */  swc1  $f6, 0x94($s2)
/* 7E37E0 80282960 C6200050 */  lwc1  $f0, 0x50($s1)
/* 7E37E4 80282964 4600018D */  trunc.w.s $f6, $f0
/* 7E37E8 80282968 E6460098 */  swc1  $f6, 0x98($s2)
/* 7E37EC 8028296C C6200060 */  lwc1  $f0, 0x60($s1)
/* 7E37F0 80282970 4600018D */  trunc.w.s $f6, $f0
/* 7E37F4 80282974 E64600A8 */  swc1  $f6, 0xa8($s2)
/* 7E37F8 80282978 C6200068 */  lwc1  $f0, 0x68($s1)
/* 7E37FC 8028297C 4600018D */  trunc.w.s $f6, $f0
/* 7E3800 80282980 E64600B4 */  swc1  $f6, 0xb4($s2)
.L80282984:
/* 7E3804 80282984 8E420070 */  lw    $v0, 0x70($s2)
/* 7E3808 80282988 00021080 */  sll   $v0, $v0, 2
/* 7E380C 8028298C 3C018028 */  lui   $at, 0x8028
/* 7E3810 80282990 00220821 */  addu  $at, $at, $v0
/* 7E3814 80282994 C4245640 */  lwc1  $f4, 0x5640($at)
/* 7E3818 80282998 C642009C */  lwc1  $f2, 0x9c($s2)
/* 7E381C 8028299C 468010A0 */  cvt.s.w $f2, $f2
/* 7E3820 802829A0 46041082 */  mul.s $f2, $f2, $f4
/* 7E3824 802829A4 00000000 */  nop   
/* 7E3828 802829A8 3C0141C8 */  lui   $at, 0x41c8
/* 7E382C 802829AC 4481C000 */  mtc1  $at, $f24
/* 7E3830 802829B0 00000000 */  nop   
/* 7E3834 802829B4 46181082 */  mul.s $f2, $f2, $f24
/* 7E3838 802829B8 00000000 */  nop   
/* 7E383C 802829BC C6400084 */  lwc1  $f0, 0x84($s2)
/* 7E3840 802829C0 46800020 */  cvt.s.w $f0, $f0
/* 7E3844 802829C4 46020000 */  add.s $f0, $f0, $f2
/* 7E3848 802829C8 E6600028 */  swc1  $f0, 0x28($s3)
/* 7E384C 802829CC C64200A0 */  lwc1  $f2, 0xa0($s2)
/* 7E3850 802829D0 468010A0 */  cvt.s.w $f2, $f2
/* 7E3854 802829D4 46041082 */  mul.s $f2, $f2, $f4
/* 7E3858 802829D8 00000000 */  nop   
/* 7E385C 802829DC 46181082 */  mul.s $f2, $f2, $f24
/* 7E3860 802829E0 00000000 */  nop   
/* 7E3864 802829E4 C6400088 */  lwc1  $f0, 0x88($s2)
/* 7E3868 802829E8 46800020 */  cvt.s.w $f0, $f0
/* 7E386C 802829EC 46020000 */  add.s $f0, $f0, $f2
/* 7E3870 802829F0 E660002C */  swc1  $f0, 0x2c($s3)
/* 7E3874 802829F4 C64200A4 */  lwc1  $f2, 0xa4($s2)
/* 7E3878 802829F8 468010A0 */  cvt.s.w $f2, $f2
/* 7E387C 802829FC 46041082 */  mul.s $f2, $f2, $f4
/* 7E3880 80282A00 00000000 */  nop   
/* 7E3884 80282A04 46181082 */  mul.s $f2, $f2, $f24
/* 7E3888 80282A08 00000000 */  nop   
/* 7E388C 80282A0C C640008C */  lwc1  $f0, 0x8c($s2)
/* 7E3890 80282A10 46800020 */  cvt.s.w $f0, $f0
/* 7E3894 80282A14 46020000 */  add.s $f0, $f0, $f2
/* 7E3898 80282A18 E6600030 */  swc1  $f0, 0x30($s3)
/* 7E389C 80282A1C C642009C */  lwc1  $f2, 0x9c($s2)
/* 7E38A0 80282A20 468010A0 */  cvt.s.w $f2, $f2
/* 7E38A4 80282A24 46041082 */  mul.s $f2, $f2, $f4
/* 7E38A8 80282A28 00000000 */  nop   
/* 7E38AC 80282A2C 46181082 */  mul.s $f2, $f2, $f24
/* 7E38B0 80282A30 00000000 */  nop   
/* 7E38B4 80282A34 C6400090 */  lwc1  $f0, 0x90($s2)
/* 7E38B8 80282A38 46800020 */  cvt.s.w $f0, $f0
/* 7E38BC 80282A3C 46020000 */  add.s $f0, $f0, $f2
/* 7E38C0 80282A40 E6200048 */  swc1  $f0, 0x48($s1)
/* 7E38C4 80282A44 C64200A0 */  lwc1  $f2, 0xa0($s2)
/* 7E38C8 80282A48 468010A0 */  cvt.s.w $f2, $f2
/* 7E38CC 80282A4C 46041082 */  mul.s $f2, $f2, $f4
/* 7E38D0 80282A50 00000000 */  nop   
/* 7E38D4 80282A54 46181082 */  mul.s $f2, $f2, $f24
/* 7E38D8 80282A58 00000000 */  nop   
/* 7E38DC 80282A5C C6400094 */  lwc1  $f0, 0x94($s2)
/* 7E38E0 80282A60 46800020 */  cvt.s.w $f0, $f0
/* 7E38E4 80282A64 46020000 */  add.s $f0, $f0, $f2
/* 7E38E8 80282A68 E620004C */  swc1  $f0, 0x4c($s1)
/* 7E38EC 80282A6C C64200A4 */  lwc1  $f2, 0xa4($s2)
/* 7E38F0 80282A70 468010A0 */  cvt.s.w $f2, $f2
/* 7E38F4 80282A74 46041082 */  mul.s $f2, $f2, $f4
/* 7E38F8 80282A78 00000000 */  nop   
/* 7E38FC 80282A7C 46181082 */  mul.s $f2, $f2, $f24
/* 7E3900 80282A80 00000000 */  nop   
/* 7E3904 80282A84 C6400098 */  lwc1  $f0, 0x98($s2)
/* 7E3908 80282A88 46800020 */  cvt.s.w $f0, $f0
/* 7E390C 80282A8C 46020000 */  add.s $f0, $f0, $f2
/* 7E3910 80282A90 E6200050 */  swc1  $f0, 0x50($s1)
/* 7E3914 80282A94 8E420070 */  lw    $v0, 0x70($s2)
/* 7E3918 80282A98 2842000C */  slti  $v0, $v0, 0xc
/* 7E391C 80282A9C 1040004D */  beqz  $v0, .L80282BD4
/* 7E3920 80282AA0 00000000 */   nop   
/* 7E3924 80282AA4 C642009C */  lwc1  $f2, 0x9c($s2)
/* 7E3928 80282AA8 468010A0 */  cvt.s.w $f2, $f2
/* 7E392C 80282AAC 46041082 */  mul.s $f2, $f2, $f4
/* 7E3930 80282AB0 00000000 */  nop   
/* 7E3934 80282AB4 3C01C2B4 */  lui   $at, 0xc2b4
/* 7E3938 80282AB8 44810000 */  mtc1  $at, $f0
/* 7E393C 80282ABC 00000000 */  nop   
/* 7E3940 80282AC0 46001082 */  mul.s $f2, $f2, $f0
/* 7E3944 80282AC4 00000000 */  nop   
/* 7E3948 80282AC8 C64000B4 */  lwc1  $f0, 0xb4($s2)
/* 7E394C 80282ACC 46800020 */  cvt.s.w $f0, $f0
/* 7E3950 80282AD0 46020000 */  add.s $f0, $f0, $f2
/* 7E3954 80282AD4 E6200068 */  swc1  $f0, 0x68($s1)
/* 7E3958 80282AD8 C64200A4 */  lwc1  $f2, 0xa4($s2)
/* 7E395C 80282ADC 468010A0 */  cvt.s.w $f2, $f2
/* 7E3960 80282AE0 46041082 */  mul.s $f2, $f2, $f4
/* 7E3964 80282AE4 00000000 */  nop   
/* 7E3968 80282AE8 3C0142B4 */  lui   $at, 0x42b4
/* 7E396C 80282AEC 4481B000 */  mtc1  $at, $f22
/* 7E3970 80282AF0 00000000 */  nop   
/* 7E3974 80282AF4 46161082 */  mul.s $f2, $f2, $f22
/* 7E3978 80282AF8 00000000 */  nop   
/* 7E397C 80282AFC 46162582 */  mul.s $f22, $f4, $f22
/* 7E3980 80282B00 00000000 */  nop   
/* 7E3984 80282B04 C64000A8 */  lwc1  $f0, 0xa8($s2)
/* 7E3988 80282B08 46800020 */  cvt.s.w $f0, $f0
/* 7E398C 80282B0C 46020000 */  add.s $f0, $f0, $f2
/* 7E3990 80282B10 4600B306 */  mov.s $f12, $f22
/* 7E3994 80282B14 0C00A8BB */  jal   sin_deg
/* 7E3998 80282B18 E6200060 */   swc1  $f0, 0x60($s1)
/* 7E399C 80282B1C 46180002 */  mul.s $f0, $f0, $f24
/* 7E39A0 80282B20 00000000 */  nop   
/* 7E39A4 80282B24 3C013FE0 */  lui   $at, 0x3fe0
/* 7E39A8 80282B28 4481A800 */  mtc1  $at, $f21
/* 7E39AC 80282B2C 4480A000 */  mtc1  $zero, $f20
/* 7E39B0 80282B30 46000021 */  cvt.d.s $f0, $f0
/* 7E39B4 80282B34 46340002 */  mul.d $f0, $f0, $f20
/* 7E39B8 80282B38 00000000 */  nop   
/* 7E39BC 80282B3C C622004C */  lwc1  $f2, 0x4c($s1)
/* 7E39C0 80282B40 460010A1 */  cvt.d.s $f2, $f2
/* 7E39C4 80282B44 46201080 */  add.d $f2, $f2, $f0
/* 7E39C8 80282B48 4600B306 */  mov.s $f12, $f22
/* 7E39CC 80282B4C 462010A0 */  cvt.s.d $f2, $f2
/* 7E39D0 80282B50 0C00A8BB */  jal   sin_deg
/* 7E39D4 80282B54 E622004C */   swc1  $f2, 0x4c($s1)
/* 7E39D8 80282B58 C642009C */  lwc1  $f2, 0x9c($s2)
/* 7E39DC 80282B5C 468010A0 */  cvt.s.w $f2, $f2
/* 7E39E0 80282B60 46001082 */  mul.s $f2, $f2, $f0
/* 7E39E4 80282B64 00000000 */  nop   
/* 7E39E8 80282B68 46181082 */  mul.s $f2, $f2, $f24
/* 7E39EC 80282B6C 00000000 */  nop   
/* 7E39F0 80282B70 460010A1 */  cvt.d.s $f2, $f2
/* 7E39F4 80282B74 46341082 */  mul.d $f2, $f2, $f20
/* 7E39F8 80282B78 00000000 */  nop   
/* 7E39FC 80282B7C C6200048 */  lwc1  $f0, 0x48($s1)
/* 7E3A00 80282B80 46000021 */  cvt.d.s $f0, $f0
/* 7E3A04 80282B84 46220001 */  sub.d $f0, $f0, $f2
/* 7E3A08 80282B88 4600B306 */  mov.s $f12, $f22
/* 7E3A0C 80282B8C 46200020 */  cvt.s.d $f0, $f0
/* 7E3A10 80282B90 0C00A8BB */  jal   sin_deg
/* 7E3A14 80282B94 E6200048 */   swc1  $f0, 0x48($s1)
/* 7E3A18 80282B98 C64200A4 */  lwc1  $f2, 0xa4($s2)
/* 7E3A1C 80282B9C 468010A0 */  cvt.s.w $f2, $f2
/* 7E3A20 80282BA0 46001082 */  mul.s $f2, $f2, $f0
/* 7E3A24 80282BA4 00000000 */  nop   
/* 7E3A28 80282BA8 46181082 */  mul.s $f2, $f2, $f24
/* 7E3A2C 80282BAC 00000000 */  nop   
/* 7E3A30 80282BB0 460010A1 */  cvt.d.s $f2, $f2
/* 7E3A34 80282BB4 46341082 */  mul.d $f2, $f2, $f20
/* 7E3A38 80282BB8 00000000 */  nop   
/* 7E3A3C 80282BBC C6200050 */  lwc1  $f0, 0x50($s1)
/* 7E3A40 80282BC0 46000021 */  cvt.d.s $f0, $f0
/* 7E3A44 80282BC4 46220001 */  sub.d $f0, $f0, $f2
/* 7E3A48 80282BC8 46200020 */  cvt.s.d $f0, $f0
/* 7E3A4C 80282BCC 080A0AF9 */  j     .L80282BE4
/* 7E3A50 80282BD0 E6200050 */   swc1  $f0, 0x50($s1)

.L80282BD4:
/* 7E3A54 80282BD4 44800000 */  mtc1  $zero, $f0
/* 7E3A58 80282BD8 00000000 */  nop   
/* 7E3A5C 80282BDC E6200060 */  swc1  $f0, 0x60($s1)
/* 7E3A60 80282BE0 E6200068 */  swc1  $f0, 0x68($s1)
.L80282BE4:
/* 7E3A64 80282BE4 C6600028 */  lwc1  $f0, 0x28($s3)
/* 7E3A68 80282BE8 C662002C */  lwc1  $f2, 0x2c($s3)
/* 7E3A6C 80282BEC C6640030 */  lwc1  $f4, 0x30($s3)
/* 7E3A70 80282BF0 3C02800B */  lui   $v0, 0x800b
/* 7E3A74 80282BF4 24421D80 */  addiu $v0, $v0, 0x1d80
/* 7E3A78 80282BF8 E4400060 */  swc1  $f0, 0x60($v0)
/* 7E3A7C 80282BFC E4420064 */  swc1  $f2, 0x64($v0)
/* 7E3A80 80282C00 E4440068 */  swc1  $f4, 0x68($v0)
/* 7E3A84 80282C04 8E430070 */  lw    $v1, 0x70($s2)
/* 7E3A88 80282C08 24630001 */  addiu $v1, $v1, 1
/* 7E3A8C 80282C0C 3862000D */  xori  $v0, $v1, 0xd
/* 7E3A90 80282C10 AE430070 */  sw    $v1, 0x70($s2)
/* 7E3A94 80282C14 8FBF0020 */  lw    $ra, 0x20($sp)
/* 7E3A98 80282C18 8FB3001C */  lw    $s3, 0x1c($sp)
/* 7E3A9C 80282C1C 8FB20018 */  lw    $s2, 0x18($sp)
/* 7E3AA0 80282C20 8FB10014 */  lw    $s1, 0x14($sp)
/* 7E3AA4 80282C24 8FB00010 */  lw    $s0, 0x10($sp)
/* 7E3AA8 80282C28 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 7E3AAC 80282C2C D7B60030 */  ldc1  $f22, 0x30($sp)
/* 7E3AB0 80282C30 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 7E3AB4 80282C34 2C420001 */  sltiu $v0, $v0, 1
/* 7E3AB8 80282C38 03E00008 */  jr    $ra
/* 7E3ABC 80282C3C 27BD0040 */   addiu $sp, $sp, 0x40

/* 7E3AC0 80282C40 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 7E3AC4 80282C44 AFB30034 */  sw    $s3, 0x34($sp)
/* 7E3AC8 80282C48 0080982D */  daddu $s3, $a0, $zero
/* 7E3ACC 80282C4C AFB00028 */  sw    $s0, 0x28($sp)
/* 7E3AD0 80282C50 AFBF0038 */  sw    $ra, 0x38($sp)
/* 7E3AD4 80282C54 AFB20030 */  sw    $s2, 0x30($sp)
/* 7E3AD8 80282C58 AFB1002C */  sw    $s1, 0x2c($sp)
/* 7E3ADC 80282C5C 8E6400B0 */  lw    $a0, 0xb0($s3)
/* 7E3AE0 80282C60 8E7200AC */  lw    $s2, 0xac($s3)
/* 7E3AE4 80282C64 0C04417A */  jal   get_entity_by_index
/* 7E3AE8 80282C68 00A0802D */   daddu $s0, $a1, $zero
/* 7E3AEC 80282C6C 12000023 */  beqz  $s0, .L80282CFC
/* 7E3AF0 80282C70 0040882D */   daddu $s1, $v0, $zero
/* 7E3AF4 80282C74 0000202D */  daddu $a0, $zero, $zero
/* 7E3AF8 80282C78 27A50018 */  addiu $a1, $sp, 0x18
/* 7E3AFC 80282C7C 27A20024 */  addiu $v0, $sp, 0x24
/* 7E3B00 80282C80 27A6001C */  addiu $a2, $sp, 0x1c
/* 7E3B04 80282C84 27A70020 */  addiu $a3, $sp, 0x20
/* 7E3B08 80282C88 AE600070 */  sw    $zero, 0x70($s3)
/* 7E3B0C 80282C8C C620004C */  lwc1  $f0, 0x4c($s1)
/* 7E3B10 80282C90 3C01420C */  lui   $at, 0x420c
/* 7E3B14 80282C94 44811000 */  mtc1  $at, $f2
/* 7E3B18 80282C98 4600020D */  trunc.w.s $f8, $f0
/* 7E3B1C 80282C9C E6680084 */  swc1  $f8, 0x84($s3)
/* 7E3B20 80282CA0 E7A20024 */  swc1  $f2, 0x24($sp)
/* 7E3B24 80282CA4 C6260048 */  lwc1  $f6, 0x48($s1)
/* 7E3B28 80282CA8 C620004C */  lwc1  $f0, 0x4c($s1)
/* 7E3B2C 80282CAC 3C0140A0 */  lui   $at, 0x40a0
/* 7E3B30 80282CB0 44811000 */  mtc1  $at, $f2
/* 7E3B34 80282CB4 C6240050 */  lwc1  $f4, 0x50($s1)
/* 7E3B38 80282CB8 46020000 */  add.s $f0, $f0, $f2
/* 7E3B3C 80282CBC E7A60018 */  swc1  $f6, 0x18($sp)
/* 7E3B40 80282CC0 E7A40020 */  swc1  $f4, 0x20($sp)
/* 7E3B44 80282CC4 E7A0001C */  swc1  $f0, 0x1c($sp)
/* 7E3B48 80282CC8 0C0372DF */  jal   func_800DCB7C
/* 7E3B4C 80282CCC AFA20010 */   sw    $v0, 0x10($sp)
/* 7E3B50 80282CD0 C7A20024 */  lwc1  $f2, 0x24($sp)
/* 7E3B54 80282CD4 4600120D */  trunc.w.s $f8, $f2
/* 7E3B58 80282CD8 10400008 */  beqz  $v0, .L80282CFC
/* 7E3B5C 80282CDC E6680074 */   swc1  $f8, 0x74($s3)
/* 7E3B60 80282CE0 3C0140C0 */  lui   $at, 0x40c0
/* 7E3B64 80282CE4 44810000 */  mtc1  $at, $f0
/* 7E3B68 80282CE8 00000000 */  nop   
/* 7E3B6C 80282CEC 4600103E */  c.le.s $f2, $f0
/* 7E3B70 80282CF0 00000000 */  nop   
/* 7E3B74 80282CF4 45010047 */  bc1t  .L80282E14
/* 7E3B78 80282CF8 24020002 */   addiu $v0, $zero, 2
.L80282CFC:
/* 7E3B7C 80282CFC 8E420014 */  lw    $v0, 0x14($s2)
/* 7E3B80 80282D00 10400019 */  beqz  $v0, .L80282D68
/* 7E3B84 80282D04 0220202D */   daddu $a0, $s1, $zero
/* 7E3B88 80282D08 0040F809 */  jalr  $v0
/* 7E3B8C 80282D0C 0260282D */  daddu $a1, $s3, $zero
/* 7E3B90 80282D10 10400040 */  beqz  $v0, .L80282E14
/* 7E3B94 80282D14 0000102D */   daddu $v0, $zero, $zero
/* 7E3B98 80282D18 C6460008 */  lwc1  $f6, 8($s2)
/* 7E3B9C 80282D1C 468031A0 */  cvt.s.w $f6, $f6
/* 7E3BA0 80282D20 C6400010 */  lwc1  $f0, 0x10($s2)
/* 7E3BA4 80282D24 46800020 */  cvt.s.w $f0, $f0
/* 7E3BA8 80282D28 C6220050 */  lwc1  $f2, 0x50($s1)
/* 7E3BAC 80282D2C 3C0141C8 */  lui   $at, 0x41c8
/* 7E3BB0 80282D30 44812000 */  mtc1  $at, $f4
/* 7E3BB4 80282D34 46001081 */  sub.s $f2, $f2, $f0
/* 7E3BB8 80282D38 C6200048 */  lwc1  $f0, 0x48($s1)
/* 7E3BBC 80282D3C 92420004 */  lbu   $v0, 4($s2)
/* 7E3BC0 80282D40 46060001 */  sub.s $f0, $f0, $f6
/* 7E3BC4 80282D44 46041083 */  div.s $f2, $f2, $f4
/* 7E3BC8 80282D48 4600120D */  trunc.w.s $f8, $f2
/* 7E3BCC 80282D4C 44034000 */  mfc1  $v1, $f8
/* 7E3BD0 80282D50 00000000 */  nop   
/* 7E3BD4 80282D54 00620018 */  mult  $v1, $v0
/* 7E3BD8 80282D58 24020001 */  addiu $v0, $zero, 1
/* 7E3BDC 80282D5C 8E430000 */  lw    $v1, ($s2)
/* 7E3BE0 80282D60 080A0B7D */  j     .L80282DF4
/* 7E3BE4 80282D64 46040003 */   div.s $f0, $f0, $f4

.L80282D68:
/* 7E3BE8 80282D68 8E620070 */  lw    $v0, 0x70($s3)
/* 7E3BEC 80282D6C 3C0141C8 */  lui   $at, 0x41c8
/* 7E3BF0 80282D70 44813000 */  mtc1  $at, $f6
/* 7E3BF4 80282D74 00021080 */  sll   $v0, $v0, 2
/* 7E3BF8 80282D78 3C018028 */  lui   $at, 0x8028
/* 7E3BFC 80282D7C 00220821 */  addu  $at, $at, $v0
/* 7E3C00 80282D80 C4225640 */  lwc1  $f2, 0x5640($at)
/* 7E3C04 80282D84 46061082 */  mul.s $f2, $f2, $f6
/* 7E3C08 80282D88 00000000 */  nop   
/* 7E3C0C 80282D8C C6600084 */  lwc1  $f0, 0x84($s3)
/* 7E3C10 80282D90 46800020 */  cvt.s.w $f0, $f0
/* 7E3C14 80282D94 46020001 */  sub.s $f0, $f0, $f2
/* 7E3C18 80282D98 E620004C */  swc1  $f0, 0x4c($s1)
/* 7E3C1C 80282D9C 8E620070 */  lw    $v0, 0x70($s3)
/* 7E3C20 80282DA0 2403000D */  addiu $v1, $zero, 0xd
/* 7E3C24 80282DA4 24420001 */  addiu $v0, $v0, 1
/* 7E3C28 80282DA8 14430019 */  bne   $v0, $v1, .L80282E10
/* 7E3C2C 80282DAC AE620070 */   sw    $v0, 0x70($s3)
/* 7E3C30 80282DB0 C6400010 */  lwc1  $f0, 0x10($s2)
/* 7E3C34 80282DB4 46800020 */  cvt.s.w $f0, $f0
/* 7E3C38 80282DB8 C6220050 */  lwc1  $f2, 0x50($s1)
/* 7E3C3C 80282DBC C6440008 */  lwc1  $f4, 8($s2)
/* 7E3C40 80282DC0 46802120 */  cvt.s.w $f4, $f4
/* 7E3C44 80282DC4 46001081 */  sub.s $f2, $f2, $f0
/* 7E3C48 80282DC8 C6200048 */  lwc1  $f0, 0x48($s1)
/* 7E3C4C 80282DCC 92420004 */  lbu   $v0, 4($s2)
/* 7E3C50 80282DD0 46040001 */  sub.s $f0, $f0, $f4
/* 7E3C54 80282DD4 46061083 */  div.s $f2, $f2, $f6
/* 7E3C58 80282DD8 4600120D */  trunc.w.s $f8, $f2
/* 7E3C5C 80282DDC 44034000 */  mfc1  $v1, $f8
/* 7E3C60 80282DE0 00000000 */  nop   
/* 7E3C64 80282DE4 00620018 */  mult  $v1, $v0
/* 7E3C68 80282DE8 24020001 */  addiu $v0, $zero, 1
/* 7E3C6C 80282DEC 8E430000 */  lw    $v1, ($s2)
/* 7E3C70 80282DF0 46060003 */  div.s $f0, $f0, $f6
.L80282DF4:
/* 7E3C74 80282DF4 4600020D */  trunc.w.s $f8, $f0
/* 7E3C78 80282DF8 44044000 */  mfc1  $a0, $f8
/* 7E3C7C 80282DFC 00004012 */  mflo  $t0
/* 7E3C80 80282E00 00882021 */  addu  $a0, $a0, $t0
/* 7E3C84 80282E04 00641821 */  addu  $v1, $v1, $a0
/* 7E3C88 80282E08 080A0B85 */  j     .L80282E14
/* 7E3C8C 80282E0C A0600000 */   sb    $zero, ($v1)

.L80282E10:
/* 7E3C90 80282E10 0000102D */  daddu $v0, $zero, $zero
.L80282E14:
.L80282E14:
/* 7E3C94 80282E14 8FBF0038 */  lw    $ra, 0x38($sp)
/* 7E3C98 80282E18 8FB30034 */  lw    $s3, 0x34($sp)
/* 7E3C9C 80282E1C 8FB20030 */  lw    $s2, 0x30($sp)
/* 7E3CA0 80282E20 8FB1002C */  lw    $s1, 0x2c($sp)
/* 7E3CA4 80282E24 8FB00028 */  lw    $s0, 0x28($sp)
/* 7E3CA8 80282E28 03E00008 */  jr    $ra
/* 7E3CAC 80282E2C 27BD0040 */   addiu $sp, $sp, 0x40

/* 7E3CB0 80282E30 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 7E3CB4 80282E34 AFB00010 */  sw    $s0, 0x10($sp)
/* 7E3CB8 80282E38 0080802D */  daddu $s0, $a0, $zero
/* 7E3CBC 80282E3C AFBF0018 */  sw    $ra, 0x18($sp)
/* 7E3CC0 80282E40 AFB10014 */  sw    $s1, 0x14($sp)
/* 7E3CC4 80282E44 8E0400B0 */  lw    $a0, 0xb0($s0)
/* 7E3CC8 80282E48 0C04417A */  jal   get_entity_by_index
/* 7E3CCC 80282E4C 8E1100AC */   lw    $s1, 0xac($s0)
/* 7E3CD0 80282E50 3C038011 */  lui   $v1, 0x8011
/* 7E3CD4 80282E54 2463EFC8 */  addiu $v1, $v1, -0x1038
/* 7E3CD8 80282E58 0040502D */  daddu $t2, $v0, $zero
/* 7E3CDC 80282E5C C4600028 */  lwc1  $f0, 0x28($v1)
/* 7E3CE0 80282E60 C462002C */  lwc1  $f2, 0x2c($v1)
/* 7E3CE4 80282E64 8E2D0008 */  lw    $t5, 8($s1)
/* 7E3CE8 80282E68 8E2B000C */  lw    $t3, 0xc($s1)
/* 7E3CEC 80282E6C 8E2C0010 */  lw    $t4, 0x10($s1)
/* 7E3CF0 80282E70 4600010D */  trunc.w.s $f4, $f0
/* 7E3CF4 80282E74 44042000 */  mfc1  $a0, $f4
/* 7E3CF8 80282E78 4600110D */  trunc.w.s $f4, $f2
/* 7E3CFC 80282E7C 44092000 */  mfc1  $t1, $f4
/* 7E3D00 80282E80 008D2023 */  subu  $a0, $a0, $t5
/* 7E3D04 80282E84 C4600030 */  lwc1  $f0, 0x30($v1)
/* 7E3D08 80282E88 012B4823 */  subu  $t1, $t1, $t3
/* 7E3D0C 80282E8C 4600010D */  trunc.w.s $f4, $f0
/* 7E3D10 80282E90 44082000 */  mfc1  $t0, $f4
/* 7E3D14 80282E94 04810002 */  bgez  $a0, .L80282EA0
/* 7E3D18 80282E98 010C4023 */   subu  $t0, $t0, $t4
/* 7E3D1C 80282E9C 2484FFE7 */  addiu $a0, $a0, -0x19
.L80282EA0:
/* 7E3D20 80282EA0 05020001 */  bltzl $t0, .L80282EA8
/* 7E3D24 80282EA4 2508FFE7 */   addiu $t0, $t0, -0x19
.L80282EA8:
/* 7E3D28 80282EA8 3C0551EB */  lui   $a1, 0x51eb
/* 7E3D2C 80282EAC 34A5851F */  ori   $a1, $a1, 0x851f
/* 7E3D30 80282EB0 00850018 */  mult  $a0, $a1
/* 7E3D34 80282EB4 00001810 */  mfhi  $v1
/* 7E3D38 80282EB8 00000000 */  nop   
/* 7E3D3C 80282EBC 00000000 */  nop   
/* 7E3D40 80282EC0 01250018 */  mult  $t1, $a1
/* 7E3D44 80282EC4 000417C3 */  sra   $v0, $a0, 0x1f
/* 7E3D48 80282EC8 00003010 */  mfhi  $a2
/* 7E3D4C 80282ECC 000318C3 */  sra   $v1, $v1, 3
/* 7E3D50 80282ED0 00622023 */  subu  $a0, $v1, $v0
/* 7E3D54 80282ED4 01050018 */  mult  $t0, $a1
/* 7E3D58 80282ED8 000917C3 */  sra   $v0, $t1, 0x1f
/* 7E3D5C 80282EDC 000618C3 */  sra   $v1, $a2, 3
/* 7E3D60 80282EE0 00624823 */  subu  $t1, $v1, $v0
/* 7E3D64 80282EE4 000817C3 */  sra   $v0, $t0, 0x1f
/* 7E3D68 80282EE8 00003810 */  mfhi  $a3
/* 7E3D6C 80282EEC 000718C3 */  sra   $v1, $a3, 3
/* 7E3D70 80282EF0 00624023 */  subu  $t0, $v1, $v0
/* 7E3D74 80282EF4 0080382D */  daddu $a3, $a0, $zero
/* 7E3D78 80282EF8 00041040 */  sll   $v0, $a0, 1
/* 7E3D7C 80282EFC 00441021 */  addu  $v0, $v0, $a0
/* 7E3D80 80282F00 000210C0 */  sll   $v0, $v0, 3
/* 7E3D84 80282F04 00822021 */  addu  $a0, $a0, $v0
/* 7E3D88 80282F08 00091040 */  sll   $v0, $t1, 1
/* 7E3D8C 80282F0C 00491021 */  addu  $v0, $v0, $t1
/* 7E3D90 80282F10 000210C0 */  sll   $v0, $v0, 3
/* 7E3D94 80282F14 01224821 */  addu  $t1, $t1, $v0
/* 7E3D98 80282F18 0100302D */  daddu $a2, $t0, $zero
/* 7E3D9C 80282F1C 00081040 */  sll   $v0, $t0, 1
/* 7E3DA0 80282F20 00481021 */  addu  $v0, $v0, $t0
/* 7E3DA4 80282F24 000210C0 */  sll   $v0, $v0, 3
/* 7E3DA8 80282F28 01024021 */  addu  $t0, $t0, $v0
/* 7E3DAC 80282F2C 2482000C */  addiu $v0, $a0, 0xc
/* 7E3DB0 80282F30 004D2021 */  addu  $a0, $v0, $t5
/* 7E3DB4 80282F34 012B4821 */  addu  $t1, $t1, $t3
/* 7E3DB8 80282F38 2502000C */  addiu $v0, $t0, 0xc
/* 7E3DBC 80282F3C 004C4021 */  addu  $t0, $v0, $t4
/* 7E3DC0 80282F40 AE040084 */  sw    $a0, 0x84($s0)
/* 7E3DC4 80282F44 AE090088 */  sw    $t1, 0x88($s0)
/* 7E3DC8 80282F48 AE08008C */  sw    $t0, 0x8c($s0)
/* 7E3DCC 80282F4C C5400048 */  lwc1  $f0, 0x48($t2)
/* 7E3DD0 80282F50 4600010D */  trunc.w.s $f4, $f0
/* 7E3DD4 80282F54 44042000 */  mfc1  $a0, $f4
/* 7E3DD8 80282F58 00000000 */  nop   
/* 7E3DDC 80282F5C AE040090 */  sw    $a0, 0x90($s0)
/* 7E3DE0 80282F60 C540004C */  lwc1  $f0, 0x4c($t2)
/* 7E3DE4 80282F64 4600010D */  trunc.w.s $f4, $f0
/* 7E3DE8 80282F68 E6040094 */  swc1  $f4, 0x94($s0)
/* 7E3DEC 80282F6C C5400050 */  lwc1  $f0, 0x50($t2)
/* 7E3DF0 80282F70 4600010D */  trunc.w.s $f4, $f0
/* 7E3DF4 80282F74 44032000 */  mfc1  $v1, $f4
/* 7E3DF8 80282F78 00000000 */  nop   
/* 7E3DFC 80282F7C AE030098 */  sw    $v1, 0x98($s0)
/* 7E3E00 80282F80 8E220008 */  lw    $v0, 8($s1)
/* 7E3E04 80282F84 00822023 */  subu  $a0, $a0, $v0
/* 7E3E08 80282F88 00850018 */  mult  $a0, $a1
/* 7E3E0C 80282F8C 8E220010 */  lw    $v0, 0x10($s1)
/* 7E3E10 80282F90 00005010 */  mfhi  $t2
/* 7E3E14 80282F94 00624023 */  subu  $t0, $v1, $v0
/* 7E3E18 80282F98 000417C3 */  sra   $v0, $a0, 0x1f
/* 7E3E1C 80282F9C 01050018 */  mult  $t0, $a1
/* 7E3E20 80282FA0 000A18C3 */  sra   $v1, $t2, 3
/* 7E3E24 80282FA4 00625023 */  subu  $t2, $v1, $v0
/* 7E3E28 80282FA8 01472823 */  subu  $a1, $t2, $a3
/* 7E3E2C 80282FAC 000817C3 */  sra   $v0, $t0, 0x1f
/* 7E3E30 80282FB0 00004810 */  mfhi  $t1
/* 7E3E34 80282FB4 000918C3 */  sra   $v1, $t1, 3
/* 7E3E38 80282FB8 00621023 */  subu  $v0, $v1, $v0
/* 7E3E3C 80282FBC 10A00005 */  beqz  $a1, .L80282FD4
/* 7E3E40 80282FC0 00462023 */   subu  $a0, $v0, $a2
/* 7E3E44 80282FC4 10800004 */  beqz  $a0, .L80282FD8
/* 7E3E48 80282FC8 01453021 */   addu  $a2, $t2, $a1
/* 7E3E4C 80282FCC 0000202D */  daddu $a0, $zero, $zero
/* 7E3E50 80282FD0 0080282D */  daddu $a1, $a0, $zero
.L80282FD4:
/* 7E3E54 80282FD4 01453021 */  addu  $a2, $t2, $a1
.L80282FD8:
/* 7E3E58 80282FD8 00441821 */  addu  $v1, $v0, $a0
/* 7E3E5C 80282FDC AE05009C */  sw    $a1, 0x9c($s0)
/* 7E3E60 80282FE0 AE0000A0 */  sw    $zero, 0xa0($s0)
/* 7E3E64 80282FE4 14A00005 */  bnez  $a1, .L80282FFC
/* 7E3E68 80282FE8 AE0400A4 */   sw    $a0, 0xa4($s0)
/* 7E3E6C 80282FEC 14800003 */  bnez  $a0, .L80282FFC
/* 7E3E70 80282FF0 24020002 */   addiu $v0, $zero, 2
/* 7E3E74 80282FF4 080A0C1B */  j     .L8028306C
/* 7E3E78 80282FF8 AE0200A8 */   sw    $v0, 0xa8($s0)

.L80282FFC:
/* 7E3E7C 80282FFC 92240004 */  lbu   $a0, 4($s1)
/* 7E3E80 80283000 00C4102A */  slt   $v0, $a2, $a0
/* 7E3E84 80283004 10400017 */  beqz  $v0, .L80283064
/* 7E3E88 80283008 24020001 */   addiu $v0, $zero, 1
/* 7E3E8C 8028300C 04C20016 */  bltzl $a2, .L80283068
/* 7E3E90 80283010 AE0200A8 */   sw    $v0, 0xa8($s0)
/* 7E3E94 80283014 92220005 */  lbu   $v0, 5($s1)
/* 7E3E98 80283018 0062102A */  slt   $v0, $v1, $v0
/* 7E3E9C 8028301C 10400011 */  beqz  $v0, .L80283064
/* 7E3EA0 80283020 24020001 */   addiu $v0, $zero, 1
/* 7E3EA4 80283024 0460000F */  bltz  $v1, .L80283064
/* 7E3EA8 80283028 00640018 */   mult  $v1, $a0
/* 7E3EAC 8028302C 8E220000 */  lw    $v0, ($s1)
/* 7E3EB0 80283030 00007012 */  mflo  $t6
/* 7E3EB4 80283034 00CE1821 */  addu  $v1, $a2, $t6
/* 7E3EB8 80283038 00431021 */  addu  $v0, $v0, $v1
/* 7E3EBC 8028303C 90420000 */  lbu   $v0, ($v0)
/* 7E3EC0 80283040 14400008 */  bnez  $v0, .L80283064
/* 7E3EC4 80283044 24020001 */   addiu $v0, $zero, 1
/* 7E3EC8 80283048 3C038016 */  lui   $v1, 0x8016
/* 7E3ECC 8028304C 8463A550 */  lh    $v1, -0x5ab0($v1)
/* 7E3ED0 80283050 2402FFFF */  addiu $v0, $zero, -1
/* 7E3ED4 80283054 10620003 */  beq   $v1, $v0, .L80283064
/* 7E3ED8 80283058 24020001 */   addiu $v0, $zero, 1
/* 7E3EDC 8028305C 080A0C1A */  j     .L80283068
/* 7E3EE0 80283060 AE0000A8 */   sw    $zero, 0xa8($s0)

.L80283064:
/* 7E3EE4 80283064 AE0200A8 */  sw    $v0, 0xa8($s0)
.L80283068:
.L80283068:
/* 7E3EE8 80283068 24020002 */  addiu $v0, $zero, 2
.L8028306C:
/* 7E3EEC 8028306C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 7E3EF0 80283070 8FB10014 */  lw    $s1, 0x14($sp)
/* 7E3EF4 80283074 8FB00010 */  lw    $s0, 0x10($sp)
/* 7E3EF8 80283078 03E00008 */  jr    $ra
/* 7E3EFC 8028307C 27BD0020 */   addiu $sp, $sp, 0x20

/* 7E3F00 80283080 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 7E3F04 80283084 AFB00010 */  sw    $s0, 0x10($sp)
/* 7E3F08 80283088 0080802D */  daddu $s0, $a0, $zero
/* 7E3F0C 8028308C AFBF0018 */  sw    $ra, 0x18($sp)
/* 7E3F10 80283090 AFB10014 */  sw    $s1, 0x14($sp)
/* 7E3F14 80283094 8E0400B0 */  lw    $a0, 0xb0($s0)
/* 7E3F18 80283098 0C04417A */  jal   get_entity_by_index
/* 7E3F1C 8028309C 8E1100AC */   lw    $s1, 0xac($s0)
/* 7E3F20 802830A0 3C0551EB */  lui   $a1, 0x51eb
/* 7E3F24 802830A4 34A5851F */  ori   $a1, $a1, 0x851f
/* 7E3F28 802830A8 C4400050 */  lwc1  $f0, 0x50($v0)
/* 7E3F2C 802830AC 8E240010 */  lw    $a0, 0x10($s1)
/* 7E3F30 802830B0 4600008D */  trunc.w.s $f2, $f0
/* 7E3F34 802830B4 44031000 */  mfc1  $v1, $f2
/* 7E3F38 802830B8 00000000 */  nop   
/* 7E3F3C 802830BC 00641823 */  subu  $v1, $v1, $a0
/* 7E3F40 802830C0 00650018 */  mult  $v1, $a1
/* 7E3F44 802830C4 C4400048 */  lwc1  $f0, 0x48($v0)
/* 7E3F48 802830C8 8E220008 */  lw    $v0, 8($s1)
/* 7E3F4C 802830CC 00003810 */  mfhi  $a3
/* 7E3F50 802830D0 4600008D */  trunc.w.s $f2, $f0
/* 7E3F54 802830D4 44061000 */  mfc1  $a2, $f2
/* 7E3F58 802830D8 00000000 */  nop   
/* 7E3F5C 802830DC 00C23023 */  subu  $a2, $a2, $v0
/* 7E3F60 802830E0 00C50018 */  mult  $a2, $a1
/* 7E3F64 802830E4 00031FC3 */  sra   $v1, $v1, 0x1f
/* 7E3F68 802830E8 8E0200A4 */  lw    $v0, 0xa4($s0)
/* 7E3F6C 802830EC 000738C3 */  sra   $a3, $a3, 3
/* 7E3F70 802830F0 00E33823 */  subu  $a3, $a3, $v1
/* 7E3F74 802830F4 00002810 */  mfhi  $a1
/* 7E3F78 802830F8 92230004 */  lbu   $v1, 4($s1)
/* 7E3F7C 802830FC 00E21021 */  addu  $v0, $a3, $v0
/* 7E3F80 80283100 00430018 */  mult  $v0, $v1
/* 7E3F84 80283104 8E04009C */  lw    $a0, 0x9c($s0)
/* 7E3F88 80283108 00001012 */  mflo  $v0
/* 7E3F8C 8028310C 000637C3 */  sra   $a2, $a2, 0x1f
/* 7E3F90 80283110 000528C3 */  sra   $a1, $a1, 3
/* 7E3F94 80283114 00E30018 */  mult  $a3, $v1
/* 7E3F98 80283118 00A62823 */  subu  $a1, $a1, $a2
/* 7E3F9C 8028311C 00A42021 */  addu  $a0, $a1, $a0
/* 7E3FA0 80283120 00822021 */  addu  $a0, $a0, $v0
/* 7E3FA4 80283124 8E230000 */  lw    $v1, ($s1)
/* 7E3FA8 80283128 00004812 */  mflo  $t1
/* 7E3FAC 8028312C 00A91021 */  addu  $v0, $a1, $t1
/* 7E3FB0 80283130 00621021 */  addu  $v0, $v1, $v0
/* 7E3FB4 80283134 90420000 */  lbu   $v0, ($v0)
/* 7E3FB8 80283138 00641821 */  addu  $v1, $v1, $a0
/* 7E3FBC 8028313C A0620000 */  sb    $v0, ($v1)
/* 7E3FC0 80283140 92220004 */  lbu   $v0, 4($s1)
/* 7E3FC4 80283144 00E20018 */  mult  $a3, $v0
/* 7E3FC8 80283148 8E230000 */  lw    $v1, ($s1)
/* 7E3FCC 8028314C 00003012 */  mflo  $a2
/* 7E3FD0 80283150 00A62821 */  addu  $a1, $a1, $a2
/* 7E3FD4 80283154 00651821 */  addu  $v1, $v1, $a1
/* 7E3FD8 80283158 A0600000 */  sb    $zero, ($v1)
/* 7E3FDC 8028315C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 7E3FE0 80283160 8FB10014 */  lw    $s1, 0x14($sp)
/* 7E3FE4 80283164 8FB00010 */  lw    $s0, 0x10($sp)
/* 7E3FE8 80283168 24020002 */  addiu $v0, $zero, 2
/* 7E3FEC 8028316C 03E00008 */  jr    $ra
/* 7E3FF0 80283170 27BD0020 */   addiu $sp, $sp, 0x20

/* 7E3FF4 80283174 3C058011 */  lui   $a1, 0x8011
/* 7E3FF8 80283178 24A5EFC8 */  addiu $a1, $a1, -0x1038
/* 7E3FFC 8028317C 8C8200B0 */  lw    $v0, 0xb0($a0)
/* 7E4000 80283180 3C038016 */  lui   $v1, 0x8016
/* 7E4004 80283184 8463A550 */  lh    $v1, -0x5ab0($v1)
/* 7E4008 80283188 24424000 */  addiu $v0, $v0, 0x4000
/* 7E400C 8028318C 5462000F */  bnel  $v1, $v0, .L802831CC
/* 7E4010 80283190 AC8000B8 */   sw    $zero, 0xb8($a0)
/* 7E4014 80283194 80A300B4 */  lb    $v1, 0xb4($a1)
/* 7E4018 80283198 24020014 */  addiu $v0, $zero, 0x14
/* 7E401C 8028319C 10620005 */  beq   $v1, $v0, .L802831B4
/* 7E4020 802831A0 24020001 */   addiu $v0, $zero, 1
/* 7E4024 802831A4 10620003 */  beq   $v1, $v0, .L802831B4
/* 7E4028 802831A8 24020002 */   addiu $v0, $zero, 2
/* 7E402C 802831AC 54620009 */  bnel  $v1, $v0, .L802831D4
/* 7E4030 802831B0 AC8000B8 */   sw    $zero, 0xb8($a0)
.L802831B4:
/* 7E4034 802831B4 8CA20004 */  lw    $v0, 4($a1)
/* 7E4038 802831B8 30420001 */  andi  $v0, $v0, 1
/* 7E403C 802831BC 54400003 */  bnezl $v0, .L802831CC
/* 7E4040 802831C0 AC8000B8 */   sw    $zero, 0xb8($a0)
/* 7E4044 802831C4 24020001 */  addiu $v0, $zero, 1
/* 7E4048 802831C8 AC8200B8 */  sw    $v0, 0xb8($a0)
.L802831CC:
/* 7E404C 802831CC 03E00008 */  jr    $ra
/* 7E4050 802831D0 24020002 */   addiu $v0, $zero, 2

.L802831D4:
/* 7E4054 802831D4 03E00008 */  jr    $ra
/* 7E4058 802831D8 00000000 */   nop   

