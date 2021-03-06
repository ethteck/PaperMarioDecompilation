.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel get_variable_index_alt
/* 0EC8D0 802C7F20 3C02EFE8 */  lui   $v0, 0xefe8
/* 0EC8D4 802C7F24 34422080 */  ori   $v0, $v0, 0x2080
/* 0EC8D8 802C7F28 0044102A */  slt   $v0, $v0, $a0
/* 0EC8DC 802C7F2C 14400003 */  bnez  $v0, .L802C7F3C
/* 0EC8E0 802C7F30 3C02F119 */   lui   $v0, 0xf119
.L802C7F34:
/* 0EC8E4 802C7F34 03E00008 */  jr    $ra
/* 0EC8E8 802C7F38 0080102D */   daddu $v0, $a0, $zero

.L802C7F3C:
/* 0EC8EC 802C7F3C 34424D80 */  ori   $v0, $v0, 0x4d80
/* 0EC8F0 802C7F40 0044102A */  slt   $v0, $v0, $a0
/* 0EC8F4 802C7F44 1040FFFB */  beqz  $v0, .L802C7F34
/* 0EC8F8 802C7F48 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EC8FC 802C7F4C 34421100 */  ori   $v0, $v0, 0x1100
/* 0EC900 802C7F50 0044102A */  slt   $v0, $v0, $a0
/* 0EC904 802C7F54 1040FFF7 */  beqz  $v0, .L802C7F34
/* 0EC908 802C7F58 3C02F414 */   lui   $v0, 0xf414
/* 0EC90C 802C7F5C 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0EC910 802C7F60 0044102A */  slt   $v0, $v0, $a0
/* 0EC914 802C7F64 54400005 */  bnel  $v0, $zero, .L802C7F7C
/* 0EC918 802C7F68 3C02F545 */   lui   $v0, 0xf545
/* 0EC91C 802C7F6C 3C020C84 */  lui   $v0, 0xc84
/* 0EC920 802C7F70 34425880 */  ori   $v0, $v0, 0x5880
/* 0EC924 802C7F74 03E00008 */  jr    $ra
/* 0EC928 802C7F78 00821021 */   addu  $v0, $a0, $v0

.L802C7F7C:
/* 0EC92C 802C7F7C 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0EC930 802C7F80 0044102A */  slt   $v0, $v0, $a0
/* 0EC934 802C7F84 54400005 */  bnel  $v0, $zero, .L802C7F9C
/* 0EC938 802C7F88 3C02F676 */   lui   $v0, 0xf676
/* 0EC93C 802C7F8C 3C020B53 */  lui   $v0, 0xb53
/* 0EC940 802C7F90 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0EC944 802C7F94 03E00008 */  jr    $ra
/* 0EC948 802C7F98 00821021 */   addu  $v0, $a0, $v0

.L802C7F9C:
/* 0EC94C 802C7F9C 34429800 */  ori   $v0, $v0, 0x9800
/* 0EC950 802C7FA0 0044102A */  slt   $v0, $v0, $a0
/* 0EC954 802C7FA4 54400005 */  bnel  $v0, $zero, .L802C7FBC
/* 0EC958 802C7FA8 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0EC95C 802C7FAC 3C020A21 */  lui   $v0, 0xa21
/* 0EC960 802C7FB0 3442FE80 */  ori   $v0, $v0, 0xfe80
/* 0EC964 802C7FB4 03E00008 */  jr    $ra
/* 0EC968 802C7FB8 00821021 */   addu  $v0, $a0, $v0

.L802C7FBC:
/* 0EC96C 802C7FBC 3442C500 */  ori   $v0, $v0, 0xc500
/* 0EC970 802C7FC0 0044102A */  slt   $v0, $v0, $a0
/* 0EC974 802C7FC4 54400005 */  bnel  $v0, $zero, .L802C7FDC
/* 0EC978 802C7FC8 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0EC97C 802C7FCC 3C0208F0 */  lui   $v0, 0x8f0
/* 0EC980 802C7FD0 3442D180 */  ori   $v0, $v0, 0xd180
/* 0EC984 802C7FD4 03E00008 */  jr    $ra
/* 0EC988 802C7FD8 00821021 */   addu  $v0, $a0, $v0

.L802C7FDC:
/* 0EC98C 802C7FDC 3442F200 */  ori   $v0, $v0, 0xf200
/* 0EC990 802C7FE0 0044102A */  slt   $v0, $v0, $a0
/* 0EC994 802C7FE4 54400005 */  bnel  $v0, $zero, .L802C7FFC
/* 0EC998 802C7FE8 3C02FA0A */   lui   $v0, 0xfa0a
/* 0EC99C 802C7FEC 3C0207BF */  lui   $v0, 0x7bf
/* 0EC9A0 802C7FF0 3442A480 */  ori   $v0, $v0, 0xa480
/* 0EC9A4 802C7FF4 03E00008 */  jr    $ra
/* 0EC9A8 802C7FF8 00821021 */   addu  $v0, $a0, $v0

.L802C7FFC:
/* 0EC9AC 802C7FFC 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0EC9B0 802C8000 0044102A */  slt   $v0, $v0, $a0
/* 0EC9B4 802C8004 54400005 */  bnel  $v0, $zero, .L802C801C
/* 0EC9B8 802C8008 3C02FB3B */   lui   $v0, 0xfb3b
/* 0EC9BC 802C800C 3C02068E */  lui   $v0, 0x68e
/* 0EC9C0 802C8010 34427780 */  ori   $v0, $v0, 0x7780
/* 0EC9C4 802C8014 03E00008 */  jr    $ra
/* 0EC9C8 802C8018 00821021 */   addu  $v0, $a0, $v0

.L802C801C:
/* 0EC9CC 802C801C 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0EC9D0 802C8020 0044102A */  slt   $v0, $v0, $a0
/* 0EC9D4 802C8024 54400005 */  bnel  $v0, $zero, .L802C803C
/* 0EC9D8 802C8028 3C02FC6C */   lui   $v0, 0xfc6c
/* 0EC9DC 802C802C 3C02055D */  lui   $v0, 0x55d
/* 0EC9E0 802C8030 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0EC9E4 802C8034 03E00008 */  jr    $ra
/* 0EC9E8 802C8038 00821021 */   addu  $v0, $a0, $v0

.L802C803C:
/* 0EC9EC 802C803C 34427900 */  ori   $v0, $v0, 0x7900
/* 0EC9F0 802C8040 0044102A */  slt   $v0, $v0, $a0
/* 0EC9F4 802C8044 54400005 */  bnel  $v0, $zero, .L802C805C
/* 0EC9F8 802C8048 3C02FD9D */   lui   $v0, 0xfd9d
/* 0EC9FC 802C804C 3C02042C */  lui   $v0, 0x42c
/* 0ECA00 802C8050 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0ECA04 802C8054 03E00008 */  jr    $ra
/* 0ECA08 802C8058 00821021 */   addu  $v0, $a0, $v0

.L802C805C:
/* 0ECA0C 802C805C 3442A600 */  ori   $v0, $v0, 0xa600
/* 0ECA10 802C8060 0044102A */  slt   $v0, $v0, $a0
/* 0ECA14 802C8064 54400005 */  bnel  $v0, $zero, .L802C807C
/* 0ECA18 802C8068 3C02FECE */   lui   $v0, 0xfece
/* 0ECA1C 802C806C 3C0202FA */  lui   $v0, 0x2fa
/* 0ECA20 802C8070 3442F080 */  ori   $v0, $v0, 0xf080
/* 0ECA24 802C8074 03E00008 */  jr    $ra
/* 0ECA28 802C8078 00821021 */   addu  $v0, $a0, $v0

.L802C807C:
/* 0ECA2C 802C807C 3442D300 */  ori   $v0, $v0, 0xd300
/* 0ECA30 802C8080 0044102A */  slt   $v0, $v0, $a0
/* 0ECA34 802C8084 1440FFAB */  bnez  $v0, .L802C7F34
/* 0ECA38 802C8088 3C0201C9 */   lui   $v0, 0x1c9
/* 0ECA3C 802C808C 3442C380 */  ori   $v0, $v0, 0xc380
/* 0ECA40 802C8090 03E00008 */  jr    $ra
/* 0ECA44 802C8094 00821021 */   addu  $v0, $a0, $v0

