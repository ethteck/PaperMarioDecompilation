.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel si_handle_print_debug_var
/* 0EB7CC 802C6E1C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EB7D0 802C6E20 0080382D */  daddu $a3, $a0, $zero
/* 0EB7D4 802C6E24 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0EB7D8 802C6E28 AFB20020 */  sw    $s2, 0x20($sp)
/* 0EB7DC 802C6E2C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0EB7E0 802C6E30 AFB00018 */  sw    $s0, 0x18($sp)
/* 0EB7E4 802C6E34 8CE2000C */  lw    $v0, 0xc($a3)
/* 0EB7E8 802C6E38 8C500000 */  lw    $s0, ($v0)
/* 0EB7EC 802C6E3C 3C11EFE8 */  lui   $s1, 0xefe8
/* 0EB7F0 802C6E40 36312080 */  ori   $s1, $s1, 0x2080
/* 0EB7F4 802C6E44 0230102A */  slt   $v0, $s1, $s0
/* 0EB7F8 802C6E48 14400007 */  bnez  $v0, .L802C6E68
/* 0EB7FC 802C6E4C 3C12F2E3 */   lui   $s2, 0xf2e3
/* 0EB800 802C6E50 3C04802E */  lui   $a0, 0x802e
/* 0EB804 802C6E54 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB808 802C6E58 3C05802E */  lui   $a1, 0x802e
/* 0EB80C 802C6E5C 24A59D98 */  addiu $a1, $a1, -0x6268
/* 0EB810 802C6E60 080B1CDE */  j     .L802C7378
/* 0EB814 802C6E64 0200302D */   daddu $a2, $s0, $zero

.L802C6E68:
/* 0EB818 802C6E68 36521100 */  ori   $s2, $s2, 0x1100
/* 0EB81C 802C6E6C 0250102A */  slt   $v0, $s2, $s0
/* 0EB820 802C6E70 1440000D */  bnez  $v0, .L802C6EA8
/* 0EB824 802C6E74 3C02F414 */   lui   $v0, 0xf414
/* 0EB828 802C6E78 0C0B1248 */  jal   fixed_var_to_float
/* 0EB82C 802C6E7C 0200202D */   daddu $a0, $s0, $zero
/* 0EB830 802C6E80 3C04802E */  lui   $a0, 0x802e
/* 0EB834 802C6E84 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB838 802C6E88 460000A1 */  cvt.d.s $f2, $f0
/* 0EB83C 802C6E8C 44071000 */  mfc1  $a3, $f2
/* 0EB840 802C6E90 44061800 */  mfc1  $a2, $f3
/* 0EB844 802C6E94 3C05802E */  lui   $a1, 0x802e
/* 0EB848 802C6E98 0C01953C */  jal   sprintf
/* 0EB84C 802C6E9C 24A59DA8 */   addiu $a1, $a1, -0x6258
/* 0EB850 802C6EA0 080B1CE0 */  j     .L802C7380
/* 0EB854 802C6EA4 00000000 */   nop   

.L802C6EA8:
/* 0EB858 802C6EA8 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0EB85C 802C6EAC 0050102A */  slt   $v0, $v0, $s0
/* 0EB860 802C6EB0 14400016 */  bnez  $v0, .L802C6F0C
/* 0EB864 802C6EB4 3C02F545 */   lui   $v0, 0xf545
/* 0EB868 802C6EB8 3C020C84 */  lui   $v0, 0xc84
/* 0EB86C 802C6EBC 34425880 */  ori   $v0, $v0, 0x5880
/* 0EB870 802C6EC0 02028021 */  addu  $s0, $s0, $v0
/* 0EB874 802C6EC4 06010002 */  bgez  $s0, .L802C6ED0
/* 0EB878 802C6EC8 0200182D */   daddu $v1, $s0, $zero
/* 0EB87C 802C6ECC 2603001F */  addiu $v1, $s0, 0x1f
.L802C6ED0:
/* 0EB880 802C6ED0 00034143 */  sra   $t0, $v1, 5
/* 0EB884 802C6ED4 0100182D */  daddu $v1, $t0, $zero
/* 0EB888 802C6ED8 00031140 */  sll   $v0, $v1, 5
/* 0EB88C 802C6EDC 02024023 */  subu  $t0, $s0, $v0
/* 0EB890 802C6EE0 3C04802E */  lui   $a0, 0x802e
/* 0EB894 802C6EE4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB898 802C6EE8 3C05802E */  lui   $a1, 0x802e
/* 0EB89C 802C6EEC 24A59DBC */  addiu $a1, $a1, -0x6244
/* 0EB8A0 802C6EF0 0200302D */  daddu $a2, $s0, $zero
/* 0EB8A4 802C6EF4 00031880 */  sll   $v1, $v1, 2
/* 0EB8A8 802C6EF8 8CE20140 */  lw    $v0, 0x140($a3)
/* 0EB8AC 802C6EFC 00621821 */  addu  $v1, $v1, $v0
/* 0EB8B0 802C6F00 8C620000 */  lw    $v0, ($v1)
/* 0EB8B4 802C6F04 080B1C7F */  j     .L802C71FC
/* 0EB8B8 802C6F08 24070001 */   addiu $a3, $zero, 1

.L802C6F0C:
/* 0EB8BC 802C6F0C 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0EB8C0 802C6F10 0050102A */  slt   $v0, $v0, $s0
/* 0EB8C4 802C6F14 14400021 */  bnez  $v0, .L802C6F9C
/* 0EB8C8 802C6F18 3C02F676 */   lui   $v0, 0xf676
/* 0EB8CC 802C6F1C 3C020B53 */  lui   $v0, 0xb53
/* 0EB8D0 802C6F20 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0EB8D4 802C6F24 02028021 */  addu  $s0, $s0, $v0
/* 0EB8D8 802C6F28 8CE3013C */  lw    $v1, 0x13c($a3)
/* 0EB8DC 802C6F2C 00101080 */  sll   $v0, $s0, 2
/* 0EB8E0 802C6F30 00431021 */  addu  $v0, $v0, $v1
/* 0EB8E4 802C6F34 8C470000 */  lw    $a3, ($v0)
/* 0EB8E8 802C6F38 0227102A */  slt   $v0, $s1, $a3
/* 0EB8EC 802C6F3C 14400007 */  bnez  $v0, .L802C6F5C
/* 0EB8F0 802C6F40 0247102A */   slt   $v0, $s2, $a3
/* 0EB8F4 802C6F44 3C04802E */  lui   $a0, 0x802e
/* 0EB8F8 802C6F48 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB8FC 802C6F4C 3C05802E */  lui   $a1, 0x802e
/* 0EB900 802C6F50 24A59DCC */  addiu $a1, $a1, -0x6234
/* 0EB904 802C6F54 080B1CDE */  j     .L802C7378
/* 0EB908 802C6F58 00E0302D */   daddu $a2, $a3, $zero

.L802C6F5C:
/* 0EB90C 802C6F5C 1440000A */  bnez  $v0, .L802C6F88
/* 0EB910 802C6F60 00000000 */   nop   
/* 0EB914 802C6F64 0C0B1248 */  jal   fixed_var_to_float
/* 0EB918 802C6F68 00E0202D */   daddu $a0, $a3, $zero
/* 0EB91C 802C6F6C 46000021 */  cvt.d.s $f0, $f0
/* 0EB920 802C6F70 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EB924 802C6F74 3C04802E */  lui   $a0, 0x802e
/* 0EB928 802C6F78 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB92C 802C6F7C 3C05802E */  lui   $a1, 0x802e
/* 0EB930 802C6F80 080B1CCE */  j     .L802C7338
/* 0EB934 802C6F84 24A59DDC */   addiu $a1, $a1, -0x6224

.L802C6F88:
/* 0EB938 802C6F88 3C04802E */  lui   $a0, 0x802e
/* 0EB93C 802C6F8C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB940 802C6F90 3C05802E */  lui   $a1, 0x802e
/* 0EB944 802C6F94 080B1CD6 */  j     .L802C7358
/* 0EB948 802C6F98 24A59DF0 */   addiu $a1, $a1, -0x6210

.L802C6F9C:
/* 0EB94C 802C6F9C 34429800 */  ori   $v0, $v0, 0x9800
/* 0EB950 802C6FA0 0050102A */  slt   $v0, $v0, $s0
/* 0EB954 802C6FA4 14400020 */  bnez  $v0, .L802C7028
/* 0EB958 802C6FA8 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0EB95C 802C6FAC 3C020A21 */  lui   $v0, 0xa21
/* 0EB960 802C6FB0 3442FE80 */  ori   $v0, $v0, 0xfe80
/* 0EB964 802C6FB4 02028021 */  addu  $s0, $s0, $v0
/* 0EB968 802C6FB8 0C05154E */  jal   get_global_byte
/* 0EB96C 802C6FBC 0200202D */   daddu $a0, $s0, $zero
/* 0EB970 802C6FC0 0040382D */  daddu $a3, $v0, $zero
/* 0EB974 802C6FC4 0227102A */  slt   $v0, $s1, $a3
/* 0EB978 802C6FC8 14400007 */  bnez  $v0, .L802C6FE8
/* 0EB97C 802C6FCC 0247102A */   slt   $v0, $s2, $a3
/* 0EB980 802C6FD0 3C04802E */  lui   $a0, 0x802e
/* 0EB984 802C6FD4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB988 802C6FD8 3C05802E */  lui   $a1, 0x802e
/* 0EB98C 802C6FDC 24A59E00 */  addiu $a1, $a1, -0x6200
/* 0EB990 802C6FE0 080B1CDE */  j     .L802C7378
/* 0EB994 802C6FE4 00E0302D */   daddu $a2, $a3, $zero

.L802C6FE8:
/* 0EB998 802C6FE8 1440000A */  bnez  $v0, .L802C7014
/* 0EB99C 802C6FEC 00000000 */   nop   
/* 0EB9A0 802C6FF0 0C0B1248 */  jal   fixed_var_to_float
/* 0EB9A4 802C6FF4 00E0202D */   daddu $a0, $a3, $zero
/* 0EB9A8 802C6FF8 46000021 */  cvt.d.s $f0, $f0
/* 0EB9AC 802C6FFC F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EB9B0 802C7000 3C04802E */  lui   $a0, 0x802e
/* 0EB9B4 802C7004 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB9B8 802C7008 3C05802E */  lui   $a1, 0x802e
/* 0EB9BC 802C700C 080B1CCE */  j     .L802C7338
/* 0EB9C0 802C7010 24A59E10 */   addiu $a1, $a1, -0x61f0

.L802C7014:
/* 0EB9C4 802C7014 3C04802E */  lui   $a0, 0x802e
/* 0EB9C8 802C7018 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB9CC 802C701C 3C05802E */  lui   $a1, 0x802e
/* 0EB9D0 802C7020 080B1CD6 */  j     .L802C7358
/* 0EB9D4 802C7024 24A59E24 */   addiu $a1, $a1, -0x61dc

.L802C7028:
/* 0EB9D8 802C7028 3442C500 */  ori   $v0, $v0, 0xc500
/* 0EB9DC 802C702C 0050102A */  slt   $v0, $v0, $s0
/* 0EB9E0 802C7030 14400020 */  bnez  $v0, .L802C70B4
/* 0EB9E4 802C7034 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0EB9E8 802C7038 3C0208F0 */  lui   $v0, 0x8f0
/* 0EB9EC 802C703C 3442D180 */  ori   $v0, $v0, 0xd180
/* 0EB9F0 802C7040 02028021 */  addu  $s0, $s0, $v0
/* 0EB9F4 802C7044 0C051594 */  jal   get_area_byte
/* 0EB9F8 802C7048 0200202D */   daddu $a0, $s0, $zero
/* 0EB9FC 802C704C 0040382D */  daddu $a3, $v0, $zero
/* 0EBA00 802C7050 0227102A */  slt   $v0, $s1, $a3
/* 0EBA04 802C7054 14400007 */  bnez  $v0, .L802C7074
/* 0EBA08 802C7058 0247102A */   slt   $v0, $s2, $a3
/* 0EBA0C 802C705C 3C04802E */  lui   $a0, 0x802e
/* 0EBA10 802C7060 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA14 802C7064 3C05802E */  lui   $a1, 0x802e
/* 0EBA18 802C7068 24A59E34 */  addiu $a1, $a1, -0x61cc
/* 0EBA1C 802C706C 080B1CDE */  j     .L802C7378
/* 0EBA20 802C7070 00E0302D */   daddu $a2, $a3, $zero

.L802C7074:
/* 0EBA24 802C7074 1440000A */  bnez  $v0, .L802C70A0
/* 0EBA28 802C7078 00000000 */   nop   
/* 0EBA2C 802C707C 0C0B1248 */  jal   fixed_var_to_float
/* 0EBA30 802C7080 00E0202D */   daddu $a0, $a3, $zero
/* 0EBA34 802C7084 46000021 */  cvt.d.s $f0, $f0
/* 0EBA38 802C7088 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EBA3C 802C708C 3C04802E */  lui   $a0, 0x802e
/* 0EBA40 802C7090 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA44 802C7094 3C05802E */  lui   $a1, 0x802e
/* 0EBA48 802C7098 080B1CCE */  j     .L802C7338
/* 0EBA4C 802C709C 24A59E44 */   addiu $a1, $a1, -0x61bc

.L802C70A0:
/* 0EBA50 802C70A0 3C04802E */  lui   $a0, 0x802e
/* 0EBA54 802C70A4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA58 802C70A8 3C05802E */  lui   $a1, 0x802e
/* 0EBA5C 802C70AC 080B1CD6 */  j     .L802C7358
/* 0EBA60 802C70B0 24A59E58 */   addiu $a1, $a1, -0x61a8

.L802C70B4:
/* 0EBA64 802C70B4 3442F200 */  ori   $v0, $v0, 0xf200
/* 0EBA68 802C70B8 0050102A */  slt   $v0, $v0, $s0
/* 0EBA6C 802C70BC 1440000C */  bnez  $v0, .L802C70F0
/* 0EBA70 802C70C0 3C02FA0A */   lui   $v0, 0xfa0a
/* 0EBA74 802C70C4 3C0207BF */  lui   $v0, 0x7bf
/* 0EBA78 802C70C8 3442A480 */  ori   $v0, $v0, 0xa480
/* 0EBA7C 802C70CC 02028021 */  addu  $s0, $s0, $v0
/* 0EBA80 802C70D0 0C05152F */  jal   get_global_flag
/* 0EBA84 802C70D4 0200202D */   daddu $a0, $s0, $zero
/* 0EBA88 802C70D8 3C04802E */  lui   $a0, 0x802e
/* 0EBA8C 802C70DC 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA90 802C70E0 3C05802E */  lui   $a1, 0x802e
/* 0EBA94 802C70E4 24A59E68 */  addiu $a1, $a1, -0x6198
/* 0EBA98 802C70E8 080B1C4A */  j     .L802C7128
/* 0EBA9C 802C70EC 0200302D */   daddu $a2, $s0, $zero

.L802C70F0:
/* 0EBAA0 802C70F0 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0EBAA4 802C70F4 0050102A */  slt   $v0, $v0, $s0
/* 0EBAA8 802C70F8 1440000F */  bnez  $v0, .L802C7138
/* 0EBAAC 802C70FC 3C02FB3B */   lui   $v0, 0xfb3b
/* 0EBAB0 802C7100 3C02068E */  lui   $v0, 0x68e
/* 0EBAB4 802C7104 34427780 */  ori   $v0, $v0, 0x7780
/* 0EBAB8 802C7108 02028021 */  addu  $s0, $s0, $v0
/* 0EBABC 802C710C 0C05157C */  jal   get_area_flag
/* 0EBAC0 802C7110 0200202D */   daddu $a0, $s0, $zero
/* 0EBAC4 802C7114 3C04802E */  lui   $a0, 0x802e
/* 0EBAC8 802C7118 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBACC 802C711C 3C05802E */  lui   $a1, 0x802e
/* 0EBAD0 802C7120 24A59E78 */  addiu $a1, $a1, -0x6188
/* 0EBAD4 802C7124 0200302D */  daddu $a2, $s0, $zero
.L802C7128:
/* 0EBAD8 802C7128 0C01953C */  jal   sprintf
/* 0EBADC 802C712C 0040382D */   daddu $a3, $v0, $zero
/* 0EBAE0 802C7130 080B1CE0 */  j     .L802C7380
/* 0EBAE4 802C7134 00000000 */   nop   

.L802C7138:
/* 0EBAE8 802C7138 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0EBAEC 802C713C 0050102A */  slt   $v0, $v0, $s0
/* 0EBAF0 802C7140 14400017 */  bnez  $v0, .L802C71A0
/* 0EBAF4 802C7144 3C02FC6C */   lui   $v0, 0xfc6c
/* 0EBAF8 802C7148 3C02055D */  lui   $v0, 0x55d
/* 0EBAFC 802C714C 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0EBB00 802C7150 02028021 */  addu  $s0, $s0, $v0
/* 0EBB04 802C7154 06010002 */  bgez  $s0, .L802C7160
/* 0EBB08 802C7158 0200182D */   daddu $v1, $s0, $zero
/* 0EBB0C 802C715C 2603001F */  addiu $v1, $s0, 0x1f
.L802C7160:
/* 0EBB10 802C7160 00034143 */  sra   $t0, $v1, 5
/* 0EBB14 802C7164 0100182D */  daddu $v1, $t0, $zero
/* 0EBB18 802C7168 00031140 */  sll   $v0, $v1, 5
/* 0EBB1C 802C716C 02024023 */  subu  $t0, $s0, $v0
/* 0EBB20 802C7170 3C04802E */  lui   $a0, 0x802e
/* 0EBB24 802C7174 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBB28 802C7178 3C05802E */  lui   $a1, 0x802e
/* 0EBB2C 802C717C 24A59E88 */  addiu $a1, $a1, -0x6178
/* 0EBB30 802C7180 0200302D */  daddu $a2, $s0, $zero
/* 0EBB34 802C7184 00031880 */  sll   $v1, $v1, 2
/* 0EBB38 802C7188 3C02802E */  lui   $v0, 0x802e
/* 0EBB3C 802C718C 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0EBB40 802C7190 00621821 */  addu  $v1, $v1, $v0
/* 0EBB44 802C7194 8C620000 */  lw    $v0, ($v1)
/* 0EBB48 802C7198 080B1C7F */  j     .L802C71FC
/* 0EBB4C 802C719C 24070001 */   addiu $a3, $zero, 1

.L802C71A0:
/* 0EBB50 802C71A0 34427900 */  ori   $v0, $v0, 0x7900
/* 0EBB54 802C71A4 0050102A */  slt   $v0, $v0, $s0
/* 0EBB58 802C71A8 14400019 */  bnez  $v0, .L802C7210
/* 0EBB5C 802C71AC 3C02FD9D */   lui   $v0, 0xfd9d
/* 0EBB60 802C71B0 3C02042C */  lui   $v0, 0x42c
/* 0EBB64 802C71B4 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0EBB68 802C71B8 02028021 */  addu  $s0, $s0, $v0
/* 0EBB6C 802C71BC 06010002 */  bgez  $s0, .L802C71C8
/* 0EBB70 802C71C0 0200182D */   daddu $v1, $s0, $zero
/* 0EBB74 802C71C4 2603001F */  addiu $v1, $s0, 0x1f
.L802C71C8:
/* 0EBB78 802C71C8 00034143 */  sra   $t0, $v1, 5
/* 0EBB7C 802C71CC 0100182D */  daddu $v1, $t0, $zero
/* 0EBB80 802C71D0 00031140 */  sll   $v0, $v1, 5
/* 0EBB84 802C71D4 02024023 */  subu  $t0, $s0, $v0
/* 0EBB88 802C71D8 3C04802E */  lui   $a0, 0x802e
/* 0EBB8C 802C71DC 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBB90 802C71E0 3C05802E */  lui   $a1, 0x802e
/* 0EBB94 802C71E4 24A59E98 */  addiu $a1, $a1, -0x6168
/* 0EBB98 802C71E8 0200302D */  daddu $a2, $s0, $zero
/* 0EBB9C 802C71EC 00031880 */  sll   $v1, $v1, 2
/* 0EBBA0 802C71F0 00E31821 */  addu  $v1, $a3, $v1
/* 0EBBA4 802C71F4 24070001 */  addiu $a3, $zero, 1
/* 0EBBA8 802C71F8 8C6200C4 */  lw    $v0, 0xc4($v1)
.L802C71FC:
/* 0EBBAC 802C71FC 01073804 */  sllv  $a3, $a3, $t0
/* 0EBBB0 802C7200 0C01953C */  jal   sprintf
/* 0EBBB4 802C7204 00473824 */   and   $a3, $v0, $a3
/* 0EBBB8 802C7208 080B1CE0 */  j     .L802C7380
/* 0EBBBC 802C720C 00000000 */   nop   

.L802C7210:
/* 0EBBC0 802C7210 3442A600 */  ori   $v0, $v0, 0xa600
/* 0EBBC4 802C7214 0050102A */  slt   $v0, $v0, $s0
/* 0EBBC8 802C7218 14400026 */  bnez  $v0, .L802C72B4
/* 0EBBCC 802C721C 3C02FECE */   lui   $v0, 0xfece
/* 0EBBD0 802C7220 3C0202FA */  lui   $v0, 0x2fa
/* 0EBBD4 802C7224 3442F080 */  ori   $v0, $v0, 0xf080
/* 0EBBD8 802C7228 02028021 */  addu  $s0, $s0, $v0
/* 0EBBDC 802C722C 3C04EFE8 */  lui   $a0, 0xefe8
/* 0EBBE0 802C7230 3C03802E */  lui   $v1, 0x802e
/* 0EBBE4 802C7234 8C63A484 */  lw    $v1, -0x5b7c($v1)
/* 0EBBE8 802C7238 00101080 */  sll   $v0, $s0, 2
/* 0EBBEC 802C723C 00431021 */  addu  $v0, $v0, $v1
/* 0EBBF0 802C7240 8C470000 */  lw    $a3, ($v0)
/* 0EBBF4 802C7244 34842080 */  ori   $a0, $a0, 0x2080
/* 0EBBF8 802C7248 0087202A */  slt   $a0, $a0, $a3
/* 0EBBFC 802C724C 14800007 */  bnez  $a0, .L802C726C
/* 0EBC00 802C7250 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EBC04 802C7254 3C04802E */  lui   $a0, 0x802e
/* 0EBC08 802C7258 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBC0C 802C725C 3C05802E */  lui   $a1, 0x802e
/* 0EBC10 802C7260 24A59EA8 */  addiu $a1, $a1, -0x6158
/* 0EBC14 802C7264 080B1CDE */  j     .L802C7378
/* 0EBC18 802C7268 00E0302D */   daddu $a2, $a3, $zero

.L802C726C:
/* 0EBC1C 802C726C 34421100 */  ori   $v0, $v0, 0x1100
/* 0EBC20 802C7270 0047102A */  slt   $v0, $v0, $a3
/* 0EBC24 802C7274 1440000A */  bnez  $v0, .L802C72A0
/* 0EBC28 802C7278 00000000 */   nop   
/* 0EBC2C 802C727C 0C0B1248 */  jal   fixed_var_to_float
/* 0EBC30 802C7280 00E0202D */   daddu $a0, $a3, $zero
/* 0EBC34 802C7284 46000021 */  cvt.d.s $f0, $f0
/* 0EBC38 802C7288 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EBC3C 802C728C 3C04802E */  lui   $a0, 0x802e
/* 0EBC40 802C7290 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBC44 802C7294 3C05802E */  lui   $a1, 0x802e
/* 0EBC48 802C7298 080B1CCE */  j     .L802C7338
/* 0EBC4C 802C729C 24A59EB8 */   addiu $a1, $a1, -0x6148

.L802C72A0:
/* 0EBC50 802C72A0 3C04802E */  lui   $a0, 0x802e
/* 0EBC54 802C72A4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBC58 802C72A8 3C05802E */  lui   $a1, 0x802e
/* 0EBC5C 802C72AC 080B1CD6 */  j     .L802C7358
/* 0EBC60 802C72B0 24A59ECC */   addiu $a1, $a1, -0x6134

.L802C72B4:
/* 0EBC64 802C72B4 3442D300 */  ori   $v0, $v0, 0xd300
/* 0EBC68 802C72B8 0050102A */  slt   $v0, $v0, $s0
/* 0EBC6C 802C72BC 1440002A */  bnez  $v0, .L802C7368
/* 0EBC70 802C72C0 0200302D */   daddu $a2, $s0, $zero
/* 0EBC74 802C72C4 3C0201C9 */  lui   $v0, 0x1c9
/* 0EBC78 802C72C8 3442C380 */  ori   $v0, $v0, 0xc380
/* 0EBC7C 802C72CC 02028021 */  addu  $s0, $s0, $v0
/* 0EBC80 802C72D0 00101080 */  sll   $v0, $s0, 2
/* 0EBC84 802C72D4 00E21021 */  addu  $v0, $a3, $v0
/* 0EBC88 802C72D8 8C470084 */  lw    $a3, 0x84($v0)
/* 0EBC8C 802C72DC 3C02EFE8 */  lui   $v0, 0xefe8
/* 0EBC90 802C72E0 34422080 */  ori   $v0, $v0, 0x2080
/* 0EBC94 802C72E4 0047102A */  slt   $v0, $v0, $a3
/* 0EBC98 802C72E8 14400007 */  bnez  $v0, .L802C7308
/* 0EBC9C 802C72EC 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EBCA0 802C72F0 3C04802E */  lui   $a0, 0x802e
/* 0EBCA4 802C72F4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBCA8 802C72F8 3C05802E */  lui   $a1, 0x802e
/* 0EBCAC 802C72FC 24A59EDC */  addiu $a1, $a1, -0x6124
/* 0EBCB0 802C7300 080B1CDE */  j     .L802C7378
/* 0EBCB4 802C7304 00E0302D */   daddu $a2, $a3, $zero

.L802C7308:
/* 0EBCB8 802C7308 34421100 */  ori   $v0, $v0, 0x1100
/* 0EBCBC 802C730C 0047102A */  slt   $v0, $v0, $a3
/* 0EBCC0 802C7310 1440000D */  bnez  $v0, .L802C7348
/* 0EBCC4 802C7314 00000000 */   nop   
/* 0EBCC8 802C7318 0C0B1248 */  jal   fixed_var_to_float
/* 0EBCCC 802C731C 00E0202D */   daddu $a0, $a3, $zero
/* 0EBCD0 802C7320 46000021 */  cvt.d.s $f0, $f0
/* 0EBCD4 802C7324 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EBCD8 802C7328 3C04802E */  lui   $a0, 0x802e
/* 0EBCDC 802C732C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBCE0 802C7330 3C05802E */  lui   $a1, 0x802e
/* 0EBCE4 802C7334 24A59EEC */  addiu $a1, $a1, -0x6114
.L802C7338:
/* 0EBCE8 802C7338 0C01953C */  jal   sprintf
/* 0EBCEC 802C733C 0200302D */   daddu $a2, $s0, $zero
/* 0EBCF0 802C7340 080B1CE0 */  j     .L802C7380
/* 0EBCF4 802C7344 00000000 */   nop   

.L802C7348:
/* 0EBCF8 802C7348 3C04802E */  lui   $a0, 0x802e
/* 0EBCFC 802C734C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBD00 802C7350 3C05802E */  lui   $a1, 0x802e
/* 0EBD04 802C7354 24A59F00 */  addiu $a1, $a1, -0x6100
.L802C7358:
/* 0EBD08 802C7358 0C01953C */  jal   sprintf
/* 0EBD0C 802C735C 0200302D */   daddu $a2, $s0, $zero
/* 0EBD10 802C7360 080B1CE0 */  j     .L802C7380
/* 0EBD14 802C7364 00000000 */   nop   

.L802C7368:
/* 0EBD18 802C7368 3C04802E */  lui   $a0, 0x802e
/* 0EBD1C 802C736C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBD20 802C7370 3C05802E */  lui   $a1, 0x802e
/* 0EBD24 802C7374 24A59F10 */  addiu $a1, $a1, -0x60f0
.L802C7378:
/* 0EBD28 802C7378 0C01953C */  jal   sprintf
/* 0EBD2C 802C737C 00000000 */   nop   
.L802C7380:
/* 0EBD30 802C7380 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0EBD34 802C7384 8FB20020 */  lw    $s2, 0x20($sp)
/* 0EBD38 802C7388 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0EBD3C 802C738C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0EBD40 802C7390 24020002 */  addiu $v0, $zero, 2
/* 0EBD44 802C7394 03E00008 */  jr    $ra
/* 0EBD48 802C7398 27BD0028 */   addiu $sp, $sp, 0x28

