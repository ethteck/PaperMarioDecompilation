.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osTimerServicesInit
/* 041880 80066480 3C028009 */  lui   $v0, 0x8009
/* 041884 80066484 8C424670 */  lw    $v0, 0x4670($v0)
/* 041888 80066488 00002021 */  addu  $a0, $zero, $zero
/* 04188C 8006648C 00002821 */  addu  $a1, $zero, $zero
/* 041890 80066490 3C01800A */  lui   $at, 0x800a
/* 041894 80066494 AC24A608 */  sw    $a0, -0x59f8($at)
/* 041898 80066498 3C01800A */  lui   $at, 0x800a
/* 04189C 8006649C AC25A60C */  sw    $a1, -0x59f4($at)
/* 0418A0 800664A0 3C01800A */  lui   $at, 0x800a
/* 0418A4 800664A4 AC20A5C8 */  sw    $zero, -0x5a38($at)
/* 0418A8 800664A8 3C01800A */  lui   $at, 0x800a
/* 0418AC 800664AC AC20A5E4 */  sw    $zero, -0x5a1c($at)
/* 0418B0 800664B0 AC440010 */  sw    $a0, 0x10($v0)
/* 0418B4 800664B4 AC450014 */  sw    $a1, 0x14($v0)
/* 0418B8 800664B8 AC440008 */  sw    $a0, 8($v0)
/* 0418BC 800664BC AC45000C */  sw    $a1, 0xc($v0)
/* 0418C0 800664C0 AC420004 */  sw    $v0, 4($v0)
/* 0418C4 800664C4 AC420000 */  sw    $v0, ($v0)
/* 0418C8 800664C8 AC400018 */  sw    $zero, 0x18($v0)
/* 0418CC 800664CC 03E00008 */  jr    $ra
/* 0418D0 800664D0 AC40001C */   sw    $zero, 0x1c($v0)

