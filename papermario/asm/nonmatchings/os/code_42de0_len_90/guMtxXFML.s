.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel guMtxXFML
/* 042DE0 800679E0 27BDFF78 */  addiu $sp, $sp, -0x88
/* 042DE4 800679E4 AFB00060 */  sw    $s0, 0x60($sp)
/* 042DE8 800679E8 8FB00098 */  lw    $s0, 0x98($sp)
/* 042DEC 800679EC AFB10064 */  sw    $s1, 0x64($sp)
/* 042DF0 800679F0 8FB1009C */  lw    $s1, 0x9c($sp)
/* 042DF4 800679F4 AFB20068 */  sw    $s2, 0x68($sp)
/* 042DF8 800679F8 8FB200A0 */  lw    $s2, 0xa0($sp)
/* 042DFC 800679FC F7B40070 */  sdc1  $f20, 0x70($sp)
/* 042E00 80067A00 4485A000 */  mtc1  $a1, $f20
/* 042E04 80067A04 00801021 */  addu  $v0, $a0, $zero
/* 042E08 80067A08 F7B60078 */  sdc1  $f22, 0x78($sp)
/* 042E0C 80067A0C 4486B000 */  mtc1  $a2, $f22
/* 042E10 80067A10 27A40020 */  addiu $a0, $sp, 0x20
/* 042E14 80067A14 F7B80080 */  sdc1  $f24, 0x80($sp)
/* 042E18 80067A18 4487C000 */  mtc1  $a3, $f24
/* 042E1C 80067A1C AFBF006C */  sw    $ra, 0x6c($sp)
/* 042E20 80067A20 0C019D60 */  jal   guMtxL2F
/* 042E24 80067A24 00402821 */   addu  $a1, $v0, $zero
/* 042E28 80067A28 4405A000 */  mfc1  $a1, $f20
/* 042E2C 80067A2C 4406B000 */  mfc1  $a2, $f22
/* 042E30 80067A30 4407C000 */  mfc1  $a3, $f24
/* 042E34 80067A34 27A40020 */  addiu $a0, $sp, 0x20
/* 042E38 80067A38 AFB00010 */  sw    $s0, 0x10($sp)
/* 042E3C 80067A3C AFB10014 */  sw    $s1, 0x14($sp)
/* 042E40 80067A40 0C019E9C */  jal   guMtxXFMF
/* 042E44 80067A44 AFB20018 */   sw    $s2, 0x18($sp)
/* 042E48 80067A48 8FBF006C */  lw    $ra, 0x6c($sp)
/* 042E4C 80067A4C 8FB20068 */  lw    $s2, 0x68($sp)
/* 042E50 80067A50 8FB10064 */  lw    $s1, 0x64($sp)
/* 042E54 80067A54 8FB00060 */  lw    $s0, 0x60($sp)
/* 042E58 80067A58 D7B80080 */  ldc1  $f24, 0x80($sp)
/* 042E5C 80067A5C D7B60078 */  ldc1  $f22, 0x78($sp)
/* 042E60 80067A60 D7B40070 */  ldc1  $f20, 0x70($sp)
/* 042E64 80067A64 03E00008 */  jr    $ra
/* 042E68 80067A68 27BD0088 */   addiu $sp, $sp, 0x88

/* 042E6C 80067A6C 00000000 */  nop   


