.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel do_camera_type_1
/* 00A690 8002F290 27BDFF90 */  addiu $sp, $sp, -0x70
/* 00A694 8002F294 AFB10034 */  sw    $s1, 0x34($sp)
/* 00A698 8002F298 0080882D */  daddu $s1, $a0, $zero
/* 00A69C 8002F29C AFBF0038 */  sw    $ra, 0x38($sp)
/* 00A6A0 8002F2A0 AFB00030 */  sw    $s0, 0x30($sp)
/* 00A6A4 8002F2A4 F7BE0068 */  sdc1  $f30, 0x68($sp)
/* 00A6A8 8002F2A8 F7BC0060 */  sdc1  $f28, 0x60($sp)
/* 00A6AC 8002F2AC F7BA0058 */  sdc1  $f26, 0x58($sp)
/* 00A6B0 8002F2B0 F7B80050 */  sdc1  $f24, 0x50($sp)
/* 00A6B4 8002F2B4 F7B60048 */  sdc1  $f22, 0x48($sp)
/* 00A6B8 8002F2B8 F7B40040 */  sdc1  $f20, 0x40($sp)
/* 00A6BC 8002F2BC 86220006 */  lh    $v0, 6($s1)
/* 00A6C0 8002F2C0 10400089 */  beqz  $v0, .L8002F4E8
/* 00A6C4 8002F2C4 00000000 */   nop   
/* 00A6C8 8002F2C8 C63E0054 */  lwc1  $f30, 0x54($s1)
/* 00A6CC 8002F2CC C63C005C */  lwc1  $f28, 0x5c($s1)
/* 00A6D0 8002F2D0 C6380060 */  lwc1  $f24, 0x60($s1)
/* 00A6D4 8002F2D4 C6360068 */  lwc1  $f22, 0x68($s1)
/* 00A6D8 8002F2D8 8622001C */  lh    $v0, 0x1c($s1)
/* 00A6DC 8002F2DC 86230020 */  lh    $v1, 0x20($s1)
/* 00A6E0 8002F2E0 3C10800A */  lui   $s0, 0x800a
/* 00A6E4 8002F2E4 2610A5EC */  addiu $s0, $s0, -0x5a14
/* 00A6E8 8002F2E8 A6200006 */  sh    $zero, 6($s1)
/* 00A6EC 8002F2EC 4600F306 */  mov.s $f12, $f30
/* 00A6F0 8002F2F0 4600E386 */  mov.s $f14, $f28
/* 00A6F4 8002F2F4 44820000 */  mtc1  $v0, $f0
/* 00A6F8 8002F2F8 00000000 */  nop   
/* 00A6FC 8002F2FC 46800020 */  cvt.s.w $f0, $f0
/* 00A700 8002F300 00031040 */  sll   $v0, $v1, 1
/* 00A704 8002F304 00431021 */  addu  $v0, $v0, $v1
/* 00A708 8002F308 000210C0 */  sll   $v0, $v0, 3
/* 00A70C 8002F30C 00431021 */  addu  $v0, $v0, $v1
/* 00A710 8002F310 00021080 */  sll   $v0, $v0, 2
/* 00A714 8002F314 E6200074 */  swc1  $f0, 0x74($s1)
/* 00A718 8002F318 44820000 */  mtc1  $v0, $f0
/* 00A71C 8002F31C 00000000 */  nop   
/* 00A720 8002F320 46800020 */  cvt.s.w $f0, $f0
/* 00A724 8002F324 4406C000 */  mfc1  $a2, $f24
/* 00A728 8002F328 4407B000 */  mfc1  $a3, $f22
/* 00A72C 8002F32C C6020000 */  lwc1  $f2, ($s0)
/* 00A730 8002F330 86230022 */  lh    $v1, 0x22($s1)
/* 00A734 8002F334 46020003 */  div.s $f0, $f0, $f2
/* 00A738 8002F338 00031080 */  sll   $v0, $v1, 2
/* 00A73C 8002F33C 00431021 */  addu  $v0, $v0, $v1
/* 00A740 8002F340 00021080 */  sll   $v0, $v0, 2
/* 00A744 8002F344 E6200078 */  swc1  $f0, 0x78($s1)
/* 00A748 8002F348 44820000 */  mtc1  $v0, $f0
/* 00A74C 8002F34C 00000000 */  nop   
/* 00A750 8002F350 46800020 */  cvt.s.w $f0, $f0
/* 00A754 8002F354 46020003 */  div.s $f0, $f0, $f2
/* 00A758 8002F358 0C00A720 */  jal   atan2
/* 00A75C 8002F35C E620007C */   swc1  $f0, 0x7c($s1)
/* 00A760 8002F360 46000506 */  mov.s $f20, $f0
/* 00A764 8002F364 4600F306 */  mov.s $f12, $f30
/* 00A768 8002F368 4406C000 */  mfc1  $a2, $f24
/* 00A76C 8002F36C 4407B000 */  mfc1  $a3, $f22
/* 00A770 8002F370 0C00A7B5 */  jal   dist2D
/* 00A774 8002F374 4600E386 */   mov.s $f14, $f28
/* 00A778 8002F378 8623001E */  lh    $v1, 0x1e($s1)
/* 00A77C 8002F37C C6040000 */  lwc1  $f4, ($s0)
/* 00A780 8002F380 00031040 */  sll   $v0, $v1, 1
/* 00A784 8002F384 00431021 */  addu  $v0, $v0, $v1
/* 00A788 8002F388 000210C0 */  sll   $v0, $v0, 3
/* 00A78C 8002F38C 00431021 */  addu  $v0, $v0, $v1
/* 00A790 8002F390 00021080 */  sll   $v0, $v0, 2
/* 00A794 8002F394 44821000 */  mtc1  $v0, $f2
/* 00A798 8002F398 00000000 */  nop   
/* 00A79C 8002F39C 468010A0 */  cvt.s.w $f2, $f2
/* 00A7A0 8002F3A0 46041083 */  div.s $f2, $f2, $f4
/* 00A7A4 8002F3A4 4602003C */  c.lt.s $f0, $f2
/* 00A7A8 8002F3A8 00000000 */  nop   
/* 00A7AC 8002F3AC 45020004 */  bc1fl .L8002F3C0
/* 00A7B0 8002F3B0 E6340084 */   swc1  $f20, 0x84($s1)
/* 00A7B4 8002F3B4 C6340084 */  lwc1  $f20, 0x84($s1)
/* 00A7B8 8002F3B8 0800BCF1 */  j     .L8002F3C4
/* 00A7BC 8002F3BC AFA00010 */   sw    $zero, 0x10($sp)

.L8002F3C0:
/* 00A7C0 8002F3C0 AFA00010 */  sw    $zero, 0x10($sp)
.L8002F3C4:
/* 00A7C4 8002F3C4 C6220074 */  lwc1  $f2, 0x74($s1)
/* 00A7C8 8002F3C8 C6280054 */  lwc1  $f8, 0x54($s1)
/* 00A7CC 8002F3CC 3C0140C9 */  lui   $at, 0x40c9
/* 00A7D0 8002F3D0 34210FD0 */  ori   $at, $at, 0xfd0
/* 00A7D4 8002F3D4 44815000 */  mtc1  $at, $f10
/* 00A7D8 8002F3D8 C6200058 */  lwc1  $f0, 0x58($s1)
/* 00A7DC 8002F3DC C624007C */  lwc1  $f4, 0x7c($s1)
/* 00A7E0 8002F3E0 460A1082 */  mul.s $f2, $f2, $f10
/* 00A7E4 8002F3E4 00000000 */  nop   
/* 00A7E8 8002F3E8 C626005C */  lwc1  $f6, 0x5c($s1)
/* 00A7EC 8002F3EC 3C0143B4 */  lui   $at, 0x43b4
/* 00A7F0 8002F3F0 4481B000 */  mtc1  $at, $f22
/* 00A7F4 8002F3F4 E6340088 */  swc1  $f20, 0x88($s1)
/* 00A7F8 8002F3F8 46040000 */  add.s $f0, $f0, $f4
/* 00A7FC 8002F3FC E6280048 */  swc1  $f8, 0x48($s1)
/* 00A800 8002F400 E6260050 */  swc1  $f6, 0x50($s1)
/* 00A804 8002F404 E620004C */  swc1  $f0, 0x4c($s1)
/* 00A808 8002F408 46161603 */  div.s $f24, $f2, $f22
/* 00A80C 8002F40C 0C00A85B */  jal   sin_rad
/* 00A810 8002F410 4600C306 */   mov.s $f12, $f24
/* 00A814 8002F414 46000686 */  mov.s $f26, $f0
/* 00A818 8002F418 0C00A874 */  jal   cos_rad
/* 00A81C 8002F41C 4600C306 */   mov.s $f12, $f24
/* 00A820 8002F420 C7B00010 */  lwc1  $f16, 0x10($sp)
/* 00A824 8002F424 46000206 */  mov.s $f8, $f0
/* 00A828 8002F428 46104182 */  mul.s $f6, $f8, $f16
/* 00A82C 8002F42C 00000000 */  nop   
/* 00A830 8002F430 C63C0078 */  lwc1  $f28, 0x78($s1)
/* 00A834 8002F434 461AE082 */  mul.s $f2, $f28, $f26
/* 00A838 8002F438 00000000 */  nop   
/* 00A83C 8002F43C 46008007 */  neg.s $f0, $f16
/* 00A840 8002F440 4600D002 */  mul.s $f0, $f26, $f0
/* 00A844 8002F444 00000000 */  nop   
/* 00A848 8002F448 4608E102 */  mul.s $f4, $f28, $f8
/* 00A84C 8002F44C 00000000 */  nop   
/* 00A850 8002F450 3C0140C9 */  lui   $at, 0x40c9
/* 00A854 8002F454 34210FD0 */  ori   $at, $at, 0xfd0
/* 00A858 8002F458 44815000 */  mtc1  $at, $f10
/* 00A85C 8002F45C 00000000 */  nop   
/* 00A860 8002F460 460AA282 */  mul.s $f10, $f20, $f10
/* 00A864 8002F464 00000000 */  nop   
/* 00A868 8002F468 46008606 */  mov.s $f24, $f16
/* 00A86C 8002F46C 4600C786 */  mov.s $f30, $f24
/* 00A870 8002F470 46023180 */  add.s $f6, $f6, $f2
/* 00A874 8002F474 46165603 */  div.s $f24, $f10, $f22
/* 00A878 8002F478 4600C306 */  mov.s $f12, $f24
/* 00A87C 8002F47C 46040700 */  add.s $f28, $f0, $f4
/* 00A880 8002F480 0C00A85B */  jal   sin_rad
/* 00A884 8002F484 E7A60010 */   swc1  $f6, 0x10($sp)
/* 00A888 8002F488 46000686 */  mov.s $f26, $f0
/* 00A88C 8002F48C 0C00A874 */  jal   cos_rad
/* 00A890 8002F490 4600C306 */   mov.s $f12, $f24
/* 00A894 8002F494 46000206 */  mov.s $f8, $f0
/* 00A898 8002F498 461E4182 */  mul.s $f6, $f8, $f30
/* 00A89C 8002F49C 00000000 */  nop   
/* 00A8A0 8002F4A0 461AE082 */  mul.s $f2, $f28, $f26
/* 00A8A4 8002F4A4 00000000 */  nop   
/* 00A8A8 8002F4A8 461ED102 */  mul.s $f4, $f26, $f30
/* 00A8AC 8002F4AC 00000000 */  nop   
/* 00A8B0 8002F4B0 4608E002 */  mul.s $f0, $f28, $f8
/* 00A8B4 8002F4B4 00000000 */  nop   
/* 00A8B8 8002F4B8 46023601 */  sub.s $f24, $f6, $f2
/* 00A8BC 8002F4BC C7B00010 */  lwc1  $f16, 0x10($sp)
/* 00A8C0 8002F4C0 46002580 */  add.s $f22, $f4, $f0
/* 00A8C4 8002F4C4 C620004C */  lwc1  $f0, 0x4c($s1)
/* 00A8C8 8002F4C8 46100000 */  add.s $f0, $f0, $f16
/* 00A8CC 8002F4CC C6240048 */  lwc1  $f4, 0x48($s1)
/* 00A8D0 8002F4D0 46182100 */  add.s $f4, $f4, $f24
/* 00A8D4 8002F4D4 C6220050 */  lwc1  $f2, 0x50($s1)
/* 00A8D8 8002F4D8 46161080 */  add.s $f2, $f2, $f22
/* 00A8DC 8002F4DC E6200040 */  swc1  $f0, 0x40($s1)
/* 00A8E0 8002F4E0 E624003C */  swc1  $f4, 0x3c($s1)
/* 00A8E4 8002F4E4 E6220044 */  swc1  $f2, 0x44($s1)
.L8002F4E8:
/* 00A8E8 8002F4E8 C62A0054 */  lwc1  $f10, 0x54($s1)
/* 00A8EC 8002F4EC 3C10800A */  lui   $s0, 0x800a
/* 00A8F0 8002F4F0 2610A5EC */  addiu $s0, $s0, -0x5a14
/* 00A8F4 8002F4F4 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 00A8F8 8002F4F8 C632005C */  lwc1  $f18, 0x5c($s1)
/* 00A8FC 8002F4FC C63E0054 */  lwc1  $f30, 0x54($s1)
/* 00A900 8002F500 C6380060 */  lwc1  $f24, 0x60($s1)
/* 00A904 8002F504 C6360068 */  lwc1  $f22, 0x68($s1)
/* 00A908 8002F508 86230022 */  lh    $v1, 0x22($s1)
/* 00A90C 8002F50C C6260058 */  lwc1  $f6, 0x58($s1)
/* 00A910 8002F510 C60A0000 */  lwc1  $f10, ($s0)
/* 00A914 8002F514 C6280048 */  lwc1  $f8, 0x48($s1)
/* 00A918 8002F518 46009706 */  mov.s $f28, $f18
/* 00A91C 8002F51C 00031080 */  sll   $v0, $v1, 2
/* 00A920 8002F520 00431021 */  addu  $v0, $v0, $v1
/* 00A924 8002F524 00021080 */  sll   $v0, $v0, 2
/* 00A928 8002F528 44828000 */  mtc1  $v0, $f16
/* 00A92C 8002F52C 00000000 */  nop   
/* 00A930 8002F530 46808420 */  cvt.s.w $f16, $f16
/* 00A934 8002F534 460A8283 */  div.s $f10, $f16, $f10
/* 00A938 8002F538 4600F306 */  mov.s $f12, $f30
/* 00A93C 8002F53C E62A007C */  swc1  $f10, 0x7c($s1)
/* 00A940 8002F540 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 00A944 8002F544 4600E386 */  mov.s $f14, $f28
/* 00A948 8002F548 46088401 */  sub.s $f16, $f16, $f8
/* 00A94C 8002F54C 4406C000 */  mfc1  $a2, $f24
/* 00A950 8002F550 4407B000 */  mfc1  $a3, $f22
/* 00A954 8002F554 460A3180 */  add.s $f6, $f6, $f10
/* 00A958 8002F558 E7B00028 */  swc1  $f16, 0x28($sp)
/* 00A95C 8002F55C C6200050 */  lwc1  $f0, 0x50($s1)
/* 00A960 8002F560 8622001C */  lh    $v0, 0x1c($s1)
/* 00A964 8002F564 46009481 */  sub.s $f18, $f18, $f0
/* 00A968 8002F568 44820000 */  mtc1  $v0, $f0
/* 00A96C 8002F56C 00000000 */  nop   
/* 00A970 8002F570 46800020 */  cvt.s.w $f0, $f0
/* 00A974 8002F574 E6200074 */  swc1  $f0, 0x74($s1)
/* 00A978 8002F578 3C013F00 */  lui   $at, 0x3f00
/* 00A97C 8002F57C 44810000 */  mtc1  $at, $f0
/* 00A980 8002F580 86230020 */  lh    $v1, 0x20($s1)
/* 00A984 8002F584 46008282 */  mul.s $f10, $f16, $f0
/* 00A988 8002F588 00000000 */  nop   
/* 00A98C 8002F58C C622004C */  lwc1  $f2, 0x4c($s1)
/* 00A990 8002F590 00031040 */  sll   $v0, $v1, 1
/* 00A994 8002F594 00431021 */  addu  $v0, $v0, $v1
/* 00A998 8002F598 000210C0 */  sll   $v0, $v0, 3
/* 00A99C 8002F59C 46023181 */  sub.s $f6, $f6, $f2
/* 00A9A0 8002F5A0 00431021 */  addu  $v0, $v0, $v1
/* 00A9A4 8002F5A4 00021080 */  sll   $v0, $v0, 2
/* 00A9A8 8002F5A8 46009482 */  mul.s $f18, $f18, $f0
/* 00A9AC 8002F5AC 00000000 */  nop   
/* 00A9B0 8002F5B0 3C014120 */  lui   $at, 0x4120
/* 00A9B4 8002F5B4 44810000 */  mtc1  $at, $f0
/* 00A9B8 8002F5B8 44822000 */  mtc1  $v0, $f4
/* 00A9BC 8002F5BC 00000000 */  nop   
/* 00A9C0 8002F5C0 46802120 */  cvt.s.w $f4, $f4
/* 00A9C4 8002F5C4 46003183 */  div.s $f6, $f6, $f0
/* 00A9C8 8002F5C8 46001006 */  mov.s $f0, $f2
/* 00A9CC 8002F5CC 46060000 */  add.s $f0, $f0, $f6
/* 00A9D0 8002F5D0 C6100000 */  lwc1  $f16, ($s0)
/* 00A9D4 8002F5D4 C6220050 */  lwc1  $f2, 0x50($s1)
/* 00A9D8 8002F5D8 460A4200 */  add.s $f8, $f8, $f10
/* 00A9DC 8002F5DC 46102103 */  div.s $f4, $f4, $f16
/* 00A9E0 8002F5E0 E6240078 */  swc1  $f4, 0x78($s1)
/* 00A9E4 8002F5E4 46121080 */  add.s $f2, $f2, $f18
/* 00A9E8 8002F5E8 E620004C */  swc1  $f0, 0x4c($s1)
/* 00A9EC 8002F5EC E6280048 */  swc1  $f8, 0x48($s1)
/* 00A9F0 8002F5F0 0C00A720 */  jal   atan2
/* 00A9F4 8002F5F4 E6220050 */   swc1  $f2, 0x50($s1)
/* 00A9F8 8002F5F8 46000506 */  mov.s $f20, $f0
/* 00A9FC 8002F5FC 4600F306 */  mov.s $f12, $f30
/* 00AA00 8002F600 4406C000 */  mfc1  $a2, $f24
/* 00AA04 8002F604 4407B000 */  mfc1  $a3, $f22
/* 00AA08 8002F608 0C00A7B5 */  jal   dist2D
/* 00AA0C 8002F60C 4600E386 */   mov.s $f14, $f28
/* 00AA10 8002F610 8623001E */  lh    $v1, 0x1e($s1)
/* 00AA14 8002F614 C6040000 */  lwc1  $f4, ($s0)
/* 00AA18 8002F618 00031040 */  sll   $v0, $v1, 1
/* 00AA1C 8002F61C 00431021 */  addu  $v0, $v0, $v1
/* 00AA20 8002F620 000210C0 */  sll   $v0, $v0, 3
/* 00AA24 8002F624 00431021 */  addu  $v0, $v0, $v1
/* 00AA28 8002F628 00021080 */  sll   $v0, $v0, 2
/* 00AA2C 8002F62C 44821000 */  mtc1  $v0, $f2
/* 00AA30 8002F630 00000000 */  nop   
/* 00AA34 8002F634 468010A0 */  cvt.s.w $f2, $f2
/* 00AA38 8002F638 46041083 */  div.s $f2, $f2, $f4
/* 00AA3C 8002F63C 4602003C */  c.lt.s $f0, $f2
/* 00AA40 8002F640 00000000 */  nop   
/* 00AA44 8002F644 45020002 */  bc1fl .L8002F650
/* 00AA48 8002F648 E6340084 */   swc1  $f20, 0x84($s1)
/* 00AA4C 8002F64C C6340084 */  lwc1  $f20, 0x84($s1)
.L8002F650:
/* 00AA50 8002F650 C62E0088 */  lwc1  $f14, 0x88($s1)
/* 00AA54 8002F654 0C00A70A */  jal   get_clamped_angle_diff
/* 00AA58 8002F658 4600A306 */   mov.s $f12, $f20
/* 00AA5C 8002F65C C6240074 */  lwc1  $f4, 0x74($s1)
/* 00AA60 8002F660 3C0140C9 */  lui   $at, 0x40c9
/* 00AA64 8002F664 34210FD0 */  ori   $at, $at, 0xfd0
/* 00AA68 8002F668 44815000 */  mtc1  $at, $f10
/* 00AA6C 8002F66C 3C014120 */  lui   $at, 0x4120
/* 00AA70 8002F670 44811000 */  mtc1  $at, $f2
/* 00AA74 8002F674 460A2102 */  mul.s $f4, $f4, $f10
/* 00AA78 8002F678 00000000 */  nop   
/* 00AA7C 8002F67C 46020003 */  div.s $f0, $f0, $f2
/* 00AA80 8002F680 C6220088 */  lwc1  $f2, 0x88($s1)
/* 00AA84 8002F684 3C0143B4 */  lui   $at, 0x43b4
/* 00AA88 8002F688 4481B000 */  mtc1  $at, $f22
/* 00AA8C 8002F68C 46001081 */  sub.s $f2, $f2, $f0
/* 00AA90 8002F690 AFA00010 */  sw    $zero, 0x10($sp)
/* 00AA94 8002F694 46001506 */  mov.s $f20, $f2
/* 00AA98 8002F698 E6340088 */  swc1  $f20, 0x88($s1)
/* 00AA9C 8002F69C 46162603 */  div.s $f24, $f4, $f22
/* 00AAA0 8002F6A0 0C00A85B */  jal   sin_rad
/* 00AAA4 8002F6A4 4600C306 */   mov.s $f12, $f24
/* 00AAA8 8002F6A8 46000686 */  mov.s $f26, $f0
/* 00AAAC 8002F6AC 0C00A874 */  jal   cos_rad
/* 00AAB0 8002F6B0 4600C306 */   mov.s $f12, $f24
/* 00AAB4 8002F6B4 C7B00010 */  lwc1  $f16, 0x10($sp)
/* 00AAB8 8002F6B8 46000206 */  mov.s $f8, $f0
/* 00AABC 8002F6BC 46104182 */  mul.s $f6, $f8, $f16
/* 00AAC0 8002F6C0 00000000 */  nop   
/* 00AAC4 8002F6C4 C63C0078 */  lwc1  $f28, 0x78($s1)
/* 00AAC8 8002F6C8 461AE082 */  mul.s $f2, $f28, $f26
/* 00AACC 8002F6CC 00000000 */  nop   
/* 00AAD0 8002F6D0 46008007 */  neg.s $f0, $f16
/* 00AAD4 8002F6D4 4600D002 */  mul.s $f0, $f26, $f0
/* 00AAD8 8002F6D8 00000000 */  nop   
/* 00AADC 8002F6DC 4608E102 */  mul.s $f4, $f28, $f8
/* 00AAE0 8002F6E0 00000000 */  nop   
/* 00AAE4 8002F6E4 3C0140C9 */  lui   $at, 0x40c9
/* 00AAE8 8002F6E8 34210FD0 */  ori   $at, $at, 0xfd0
/* 00AAEC 8002F6EC 44815000 */  mtc1  $at, $f10
/* 00AAF0 8002F6F0 00000000 */  nop   
/* 00AAF4 8002F6F4 460AA282 */  mul.s $f10, $f20, $f10
/* 00AAF8 8002F6F8 00000000 */  nop   
/* 00AAFC 8002F6FC 46008606 */  mov.s $f24, $f16
/* 00AB00 8002F700 4600C786 */  mov.s $f30, $f24
/* 00AB04 8002F704 46023180 */  add.s $f6, $f6, $f2
/* 00AB08 8002F708 46165603 */  div.s $f24, $f10, $f22
/* 00AB0C 8002F70C 4600C306 */  mov.s $f12, $f24
/* 00AB10 8002F710 46040700 */  add.s $f28, $f0, $f4
/* 00AB14 8002F714 0C00A85B */  jal   sin_rad
/* 00AB18 8002F718 E7A60010 */   swc1  $f6, 0x10($sp)
/* 00AB1C 8002F71C 46000686 */  mov.s $f26, $f0
/* 00AB20 8002F720 0C00A874 */  jal   cos_rad
/* 00AB24 8002F724 4600C306 */   mov.s $f12, $f24
/* 00AB28 8002F728 46000206 */  mov.s $f8, $f0
/* 00AB2C 8002F72C 461E4102 */  mul.s $f4, $f8, $f30
/* 00AB30 8002F730 00000000 */  nop   
/* 00AB34 8002F734 461AE002 */  mul.s $f0, $f28, $f26
/* 00AB38 8002F738 00000000 */  nop   
/* 00AB3C 8002F73C 461ED182 */  mul.s $f6, $f26, $f30
/* 00AB40 8002F740 00000000 */  nop   
/* 00AB44 8002F744 4608E082 */  mul.s $f2, $f28, $f8
/* 00AB48 8002F748 00000000 */  nop   
/* 00AB4C 8002F74C 46002601 */  sub.s $f24, $f4, $f0
/* 00AB50 8002F750 C7B00010 */  lwc1  $f16, 0x10($sp)
/* 00AB54 8002F754 46023580 */  add.s $f22, $f6, $f2
/* 00AB58 8002F758 C622004C */  lwc1  $f2, 0x4c($s1)
/* 00AB5C 8002F75C 46101080 */  add.s $f2, $f2, $f16
/* 00AB60 8002F760 C6200048 */  lwc1  $f0, 0x48($s1)
/* 00AB64 8002F764 8E260048 */  lw    $a2, 0x48($s1)
/* 00AB68 8002F768 46180000 */  add.s $f0, $f0, $f24
/* 00AB6C 8002F76C C62E0050 */  lwc1  $f14, 0x50($s1)
/* 00AB70 8002F770 8E270050 */  lw    $a3, 0x50($s1)
/* 00AB74 8002F774 46167380 */  add.s $f14, $f14, $f22
/* 00AB78 8002F778 E6220040 */  swc1  $f2, 0x40($s1)
/* 00AB7C 8002F77C E620003C */  swc1  $f0, 0x3c($s1)
/* 00AB80 8002F780 46000306 */  mov.s $f12, $f0
/* 00AB84 8002F784 0C00A720 */  jal   atan2
/* 00AB88 8002F788 E62E0044 */   swc1  $f14, 0x44($s1)
/* 00AB8C 8002F78C C6240048 */  lwc1  $f4, 0x48($s1)
/* 00AB90 8002F790 C622003C */  lwc1  $f2, 0x3c($s1)
/* 00AB94 8002F794 4480A000 */  mtc1  $zero, $f20
/* 00AB98 8002F798 46022781 */  sub.s $f30, $f4, $f2
/* 00AB9C 8002F79C C6240050 */  lwc1  $f4, 0x50($s1)
/* 00ABA0 8002F7A0 C6220044 */  lwc1  $f2, 0x44($s1)
/* 00ABA4 8002F7A4 4600A306 */  mov.s $f12, $f20
/* 00ABA8 8002F7A8 46022701 */  sub.s $f28, $f4, $f2
/* 00ABAC 8002F7AC C624004C */  lwc1  $f4, 0x4c($s1)
/* 00ABB0 8002F7B0 C6220040 */  lwc1  $f2, 0x40($s1)
/* 00ABB4 8002F7B4 4406F000 */  mfc1  $a2, $f30
/* 00ABB8 8002F7B8 46022101 */  sub.s $f4, $f4, $f2
/* 00ABBC 8002F7BC 4407E000 */  mfc1  $a3, $f28
/* 00ABC0 8002F7C0 4600A386 */  mov.s $f14, $f20
/* 00ABC4 8002F7C4 E7A40010 */  swc1  $f4, 0x10($sp)
/* 00ABC8 8002F7C8 0C00A720 */  jal   atan2
/* 00ABCC 8002F7CC E620006C */   swc1  $f0, 0x6c($s1)
/* 00ABD0 8002F7D0 461EF102 */  mul.s $f4, $f30, $f30
/* 00ABD4 8002F7D4 00000000 */  nop   
/* 00ABD8 8002F7D8 461CE082 */  mul.s $f2, $f28, $f28
/* 00ABDC 8002F7DC 00000000 */  nop   
/* 00ABE0 8002F7E0 46022300 */  add.s $f12, $f4, $f2
/* 00ABE4 8002F7E4 46000007 */  neg.s $f0, $f0
/* 00ABE8 8002F7E8 E6200090 */  swc1  $f0, 0x90($s1)
/* 00ABEC 8002F7EC 46006004 */  sqrt.s $f0, $f12
/* 00ABF0 8002F7F0 46000032 */  c.eq.s $f0, $f0
/* 00ABF4 8002F7F4 00000000 */  nop   
/* 00ABF8 8002F7F8 45030004 */  bc1tl .L8002F80C
/* 00ABFC 8002F7FC 4600A306 */   mov.s $f12, $f20
/* 00AC00 8002F800 0C0187BC */  jal   sqrtf
/* 00AC04 8002F804 00000000 */   nop   
/* 00AC08 8002F808 4600A306 */  mov.s $f12, $f20
.L8002F80C:
/* 00AC0C 8002F80C 46000007 */  neg.s $f0, $f0
/* 00AC10 8002F810 8FA60010 */  lw    $a2, 0x10($sp)
/* 00AC14 8002F814 44070000 */  mfc1  $a3, $f0
/* 00AC18 8002F818 0C00A720 */  jal   atan2
/* 00AC1C 8002F81C 46006386 */   mov.s $f14, $f12
/* 00AC20 8002F820 E6200094 */  swc1  $f0, 0x94($s1)
/* 00AC24 8002F824 8FBF0038 */  lw    $ra, 0x38($sp)
/* 00AC28 8002F828 8FB10034 */  lw    $s1, 0x34($sp)
/* 00AC2C 8002F82C 8FB00030 */  lw    $s0, 0x30($sp)
/* 00AC30 8002F830 D7BE0068 */  ldc1  $f30, 0x68($sp)
/* 00AC34 8002F834 D7BC0060 */  ldc1  $f28, 0x60($sp)
/* 00AC38 8002F838 D7BA0058 */  ldc1  $f26, 0x58($sp)
/* 00AC3C 8002F83C D7B80050 */  ldc1  $f24, 0x50($sp)
/* 00AC40 8002F840 D7B60048 */  ldc1  $f22, 0x48($sp)
/* 00AC44 8002F844 D7B40040 */  ldc1  $f20, 0x40($sp)
/* 00AC48 8002F848 03E00008 */  jr    $ra
/* 00AC4C 8002F84C 27BD0070 */   addiu $sp, $sp, 0x70

