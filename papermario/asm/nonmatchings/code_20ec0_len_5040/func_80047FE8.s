.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80047FE8
/* 0233E8 80047FE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0233EC 80047FEC 00041040 */  sll   $v0, $a0, 1
/* 0233F0 80047FF0 00441021 */  addu  $v0, $v0, $a0
/* 0233F4 80047FF4 00021080 */  sll   $v0, $v0, 2
/* 0233F8 80047FF8 00441023 */  subu  $v0, $v0, $a0
/* 0233FC 80047FFC 3C03800A */  lui   $v1, 0x800a
/* 023400 80048000 8C630F44 */  lw    $v1, 0xf44($v1)
/* 023404 80048004 00021100 */  sll   $v0, $v0, 4
/* 023408 80048008 AFBF0010 */  sw    $ra, 0x10($sp)
/* 02340C 8004800C 00621821 */  addu  $v1, $v1, $v0
/* 023410 80048010 80620098 */  lb    $v0, 0x98($v1)
/* 023414 80048014 10400004 */  beqz  $v0, .L80048028
/* 023418 80048018 00000000 */   nop   
/* 02341C 8004801C 8C64009C */  lw    $a0, 0x9c($v1)
/* 023420 80048020 0C05123D */  jal   free_icon
/* 023424 80048024 A0600098 */   sb    $zero, 0x98($v1)
.L80048028:
/* 023428 80048028 8FBF0010 */  lw    $ra, 0x10($sp)
/* 02342C 8004802C 03E00008 */  jr    $ra
/* 023430 80048030 27BD0018 */   addiu $sp, $sp, 0x18

