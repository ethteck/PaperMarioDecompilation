.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8011E224
/* 0B4924 8011E224 3C028007 */  lui   $v0, 0x8007
/* 0B4928 8011E228 8C42419C */  lw    $v0, 0x419c($v0)
/* 0B492C 8011E22C 80420070 */  lb    $v0, 0x70($v0)
/* 0B4930 8011E230 14400016 */  bnez  $v0, .L8011E28C
/* 0B4934 8011E234 2404FFFF */   addiu $a0, $zero, -1
/* 0B4938 8011E238 3C028015 */  lui   $v0, 0x8015
/* 0B493C 8011E23C 244239C0 */  addiu $v0, $v0, 0x39c0
/* 0B4940 8011E240 3C018015 */  lui   $at, 0x8015
/* 0B4944 8011E244 AC223A40 */  sw    $v0, 0x3a40($at)
/* 0B4948 8011E248 2403005F */  addiu $v1, $zero, 0x5f
/* 0B494C 8011E24C 3C028015 */  lui   $v0, 0x8015
/* 0B4950 8011E250 244236B8 */  addiu $v0, $v0, 0x36b8
.L8011E254:
/* 0B4954 8011E254 AC440000 */  sw    $a0, ($v0)
/* 0B4958 8011E258 2463FFFF */  addiu $v1, $v1, -1
/* 0B495C 8011E25C 0461FFFD */  bgez  $v1, .L8011E254
/* 0B4960 8011E260 2442FFF8 */   addiu $v0, $v0, -8
/* 0B4964 8011E264 2404FFFF */  addiu $a0, $zero, -1
/* 0B4968 8011E268 2403005F */  addiu $v1, $zero, 0x5f
/* 0B496C 8011E26C 3C028015 */  lui   $v0, 0x8015
/* 0B4970 8011E270 244239B8 */  addiu $v0, $v0, 0x39b8
.L8011E274:
/* 0B4974 8011E274 AC440000 */  sw    $a0, ($v0)
/* 0B4978 8011E278 2463FFFF */  addiu $v1, $v1, -1
/* 0B497C 8011E27C 0461FFFD */  bgez  $v1, .L8011E274
/* 0B4980 8011E280 2442FFF8 */   addiu $v0, $v0, -8
/* 0B4984 8011E284 080478A7 */  j     .L8011E29C
/* 0B4988 8011E288 00000000 */   nop   

.L8011E28C:
/* 0B498C 8011E28C 3C028015 */  lui   $v0, 0x8015
/* 0B4990 8011E290 24423A00 */  addiu $v0, $v0, 0x3a00
/* 0B4994 8011E294 3C018015 */  lui   $at, 0x8015
/* 0B4998 8011E298 AC223A40 */  sw    $v0, 0x3a40($at)
.L8011E29C:
/* 0B499C 8011E29C 3C028015 */  lui   $v0, 0x8015
/* 0B49A0 8011E2A0 8C423A40 */  lw    $v0, 0x3a40($v0)
/* 0B49A4 8011E2A4 2403000F */  addiu $v1, $zero, 0xf
/* 0B49A8 8011E2A8 2442003C */  addiu $v0, $v0, 0x3c
.L8011E2AC:
/* 0B49AC 8011E2AC AC400000 */  sw    $zero, ($v0)
/* 0B49B0 8011E2B0 2463FFFF */  addiu $v1, $v1, -1
/* 0B49B4 8011E2B4 0461FFFD */  bgez  $v1, .L8011E2AC
/* 0B49B8 8011E2B8 2442FFFC */   addiu $v0, $v0, -4
/* 0B49BC 8011E2BC 2402000A */  addiu $v0, $zero, 0xa
/* 0B49C0 8011E2C0 3C018015 */  lui   $at, 0x8015
/* 0B49C4 8011E2C4 AC223A48 */  sw    $v0, 0x3a48($at)
/* 0B49C8 8011E2C8 3C018015 */  lui   $at, 0x8015
/* 0B49CC 8011E2CC AC223A4C */  sw    $v0, 0x3a4c($at)
/* 0B49D0 8011E2D0 3C018015 */  lui   $at, 0x8015
/* 0B49D4 8011E2D4 AC223A50 */  sw    $v0, 0x3a50($at)
/* 0B49D8 8011E2D8 3C018015 */  lui   $at, 0x8015
/* 0B49DC 8011E2DC AC223A54 */  sw    $v0, 0x3a54($at)
/* 0B49E0 8011E2E0 24020320 */  addiu $v0, $zero, 0x320
/* 0B49E4 8011E2E4 3C018015 */  lui   $at, 0x8015
/* 0B49E8 8011E2E8 AC223A58 */  sw    $v0, 0x3a58($at)
/* 0B49EC 8011E2EC 240203E8 */  addiu $v0, $zero, 0x3e8
/* 0B49F0 8011E2F0 3C018015 */  lui   $at, 0x8015
/* 0B49F4 8011E2F4 AC2012D4 */  sw    $zero, 0x12d4($at)
/* 0B49F8 8011E2F8 3C018015 */  lui   $at, 0x8015
/* 0B49FC 8011E2FC AC203A44 */  sw    $zero, 0x3a44($at)
/* 0B4A00 8011E300 3C018015 */  lui   $at, 0x8015
/* 0B4A04 8011E304 AC223A5C */  sw    $v0, 0x3a5c($at)
/* 0B4A08 8011E308 03E00008 */  jr    $ra
/* 0B4A0C 8011E30C 00000000 */   nop   

