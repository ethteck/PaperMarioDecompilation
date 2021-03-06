.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800713F0
/* 04C7F0 800713F0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04C7F4 800713F4 AFA40010 */  sw    $a0, 0x10($sp)
/* 04C7F8 800713F8 AFA50014 */  sw    $a1, 0x14($sp)
/* 04C7FC 800713FC AFA60018 */  sw    $a2, 0x18($sp)
/* 04C800 80071400 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04C804 80071404 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04C808 80071408 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04C80C 8007140C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04C810 80071410 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04C814 80071414 0C016959 */  jal   play_effect
/* 04C818 80071418 24040049 */   addiu $a0, $zero, 0x49
/* 04C81C 8007141C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04C820 80071420 8FA50014 */  lw    $a1, 0x14($sp)
/* 04C824 80071424 8FA60018 */  lw    $a2, 0x18($sp)
/* 04C828 80071428 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04C82C 8007142C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04C830 80071430 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04C834 80071434 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04C838 80071438 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04C83C 8007143C 27BD0030 */  addiu $sp, $sp, 0x30
/* 04C840 80071440 3C018008 */  lui   $at, 0x8008
/* 04C844 80071444 8C21F8E8 */  lw    $at, -0x718($at)
/* 04C848 80071448 00200008 */  jr    $at
/* 04C84C 8007144C 00000000 */   nop   
