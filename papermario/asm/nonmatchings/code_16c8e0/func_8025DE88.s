.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8025DE88
/* 18C768 8025DE88 8C8200C0 */  lw    $v0, 0xc0($a0)
/* 18C76C 8025DE8C 00052880 */  sll   $a1, $a1, 2
/* 18C770 8025DE90 00451021 */  addu  $v0, $v0, $a1
/* 18C774 8025DE94 8C4308B0 */  lw    $v1, 0x8b0($v0)
/* 18C778 8025DE98 8C620000 */  lw    $v0, ($v1)
/* 18C77C 8025DE9C 34420010 */  ori   $v0, $v0, 0x10
/* 18C780 8025DEA0 03E00008 */  jr    $ra
/* 18C784 8025DEA4 AC620000 */   sw    $v0, ($v1)

/* 18C788 8025DEA8 00000000 */  nop   
/* 18C78C 8025DEAC 00000000 */  nop   
/* 18C790 8025DEB0 3C02800E */  lui   $v0, 0x800e
/* 18C794 8025DEB4 8042C0E8 */  lb    $v0, -0x3f18($v0)
/* 18C798 8025DEB8 AC820084 */  sw    $v0, 0x84($a0)
/* 18C79C 8025DEBC 03E00008 */  jr    $ra
/* 18C7A0 8025DEC0 24020002 */   addiu $v0, $zero, 2

/* 18C7A4 8025DEC4 3C0651EB */  lui   $a2, 0x51eb
/* 18C7A8 8025DEC8 3C05800E */  lui   $a1, 0x800e
/* 18C7AC 8025DECC 24A5C070 */  addiu $a1, $a1, -0x3f90
/* 18C7B0 8025DED0 90A30078 */  lbu   $v1, 0x78($a1)
/* 18C7B4 8025DED4 34C6851F */  ori   $a2, $a2, 0x851f
/* 18C7B8 8025DED8 00031E00 */  sll   $v1, $v1, 0x18
/* 18C7BC 8025DEDC 00031603 */  sra   $v0, $v1, 0x18
/* 18C7C0 8025DEE0 00460018 */  mult  $v0, $a2
/* 18C7C4 8025DEE4 0080382D */  daddu $a3, $a0, $zero
/* 18C7C8 8025DEE8 00031FC3 */  sra   $v1, $v1, 0x1f
/* 18C7CC 8025DEEC 00004010 */  mfhi  $t0
/* 18C7D0 8025DEF0 00081143 */  sra   $v0, $t0, 5
/* 18C7D4 8025DEF4 00431023 */  subu  $v0, $v0, $v1
/* 18C7D8 8025DEF8 00021600 */  sll   $v0, $v0, 0x18
/* 18C7DC 8025DEFC 00021603 */  sra   $v0, $v0, 0x18
/* 18C7E0 8025DF00 ACE200AC */  sw    $v0, 0xac($a3)
/* 18C7E4 8025DF04 90A20078 */  lbu   $v0, 0x78($a1)
/* 18C7E8 8025DF08 00021600 */  sll   $v0, $v0, 0x18
/* 18C7EC 8025DF0C 00022603 */  sra   $a0, $v0, 0x18
/* 18C7F0 8025DF10 00860018 */  mult  $a0, $a2
/* 18C7F4 8025DF14 3C066666 */  lui   $a2, 0x6666
/* 18C7F8 8025DF18 34C66667 */  ori   $a2, $a2, 0x6667
/* 18C7FC 8025DF1C 000217C3 */  sra   $v0, $v0, 0x1f
/* 18C800 8025DF20 00004010 */  mfhi  $t0
/* 18C804 8025DF24 00081943 */  sra   $v1, $t0, 5
/* 18C808 8025DF28 00621823 */  subu  $v1, $v1, $v0
/* 18C80C 8025DF2C 00031040 */  sll   $v0, $v1, 1
/* 18C810 8025DF30 00431021 */  addu  $v0, $v0, $v1
/* 18C814 8025DF34 000210C0 */  sll   $v0, $v0, 3
/* 18C818 8025DF38 00431021 */  addu  $v0, $v0, $v1
/* 18C81C 8025DF3C 00021080 */  sll   $v0, $v0, 2
/* 18C820 8025DF40 00822023 */  subu  $a0, $a0, $v0
/* 18C824 8025DF44 00042600 */  sll   $a0, $a0, 0x18
/* 18C828 8025DF48 00041603 */  sra   $v0, $a0, 0x18
/* 18C82C 8025DF4C 00460018 */  mult  $v0, $a2
/* 18C830 8025DF50 000427C3 */  sra   $a0, $a0, 0x1f
/* 18C834 8025DF54 00004010 */  mfhi  $t0
/* 18C838 8025DF58 00081083 */  sra   $v0, $t0, 2
/* 18C83C 8025DF5C 00441023 */  subu  $v0, $v0, $a0
/* 18C840 8025DF60 00021600 */  sll   $v0, $v0, 0x18
/* 18C844 8025DF64 00021603 */  sra   $v0, $v0, 0x18
/* 18C848 8025DF68 ACE200B0 */  sw    $v0, 0xb0($a3)
/* 18C84C 8025DF6C 90A20078 */  lbu   $v0, 0x78($a1)
/* 18C850 8025DF70 00021600 */  sll   $v0, $v0, 0x18
/* 18C854 8025DF74 00022603 */  sra   $a0, $v0, 0x18
/* 18C858 8025DF78 00860018 */  mult  $a0, $a2
/* 18C85C 8025DF7C 0000282D */  daddu $a1, $zero, $zero
/* 18C860 8025DF80 000217C3 */  sra   $v0, $v0, 0x1f
/* 18C864 8025DF84 00004010 */  mfhi  $t0
/* 18C868 8025DF88 00081883 */  sra   $v1, $t0, 2
/* 18C86C 8025DF8C 00621823 */  subu  $v1, $v1, $v0
/* 18C870 8025DF90 00031080 */  sll   $v0, $v1, 2
/* 18C874 8025DF94 00431021 */  addu  $v0, $v0, $v1
/* 18C878 8025DF98 00021040 */  sll   $v0, $v0, 1
/* 18C87C 8025DF9C 00822023 */  subu  $a0, $a0, $v0
/* 18C880 8025DFA0 00042600 */  sll   $a0, $a0, 0x18
/* 18C884 8025DFA4 8CE200AC */  lw    $v0, 0xac($a3)
/* 18C888 8025DFA8 00042603 */  sra   $a0, $a0, 0x18
/* 18C88C 8025DFAC 18400007 */  blez  $v0, .L8025DFCC
/* 18C890 8025DFB0 ACE400B4 */   sw    $a0, 0xb4($a3)
/* 18C894 8025DFB4 00021080 */  sll   $v0, $v0, 2
/* 18C898 8025DFB8 3C018028 */  lui   $at, 0x8028
/* 18C89C 8025DFBC 00220821 */  addu  $at, $at, $v0
/* 18C8A0 8025DFC0 8C224188 */  lw    $v0, 0x4188($at)
/* 18C8A4 8025DFC4 080977F5 */  j     .L8025DFD4
/* 18C8A8 8025DFC8 24050001 */   addiu $a1, $zero, 1

.L8025DFCC:
/* 18C8AC 8025DFCC 3C028028 */  lui   $v0, 0x8028
/* 18C8B0 8025DFD0 8C4241B0 */  lw    $v0, 0x41b0($v0)
.L8025DFD4:
/* 18C8B4 8025DFD4 ACE200AC */  sw    $v0, 0xac($a3)
/* 18C8B8 8025DFD8 8CE200B0 */  lw    $v0, 0xb0($a3)
/* 18C8BC 8025DFDC 5C400004 */  bgtzl $v0, .L8025DFF0
/* 18C8C0 8025DFE0 00021080 */   sll   $v0, $v0, 2
/* 18C8C4 8025DFE4 10A00007 */  beqz  $a1, .L8025E004
/* 18C8C8 8025DFE8 00000000 */   nop   
/* 18C8CC 8025DFEC 00021080 */  sll   $v0, $v0, 2
.L8025DFF0:
/* 18C8D0 8025DFF0 3C018028 */  lui   $at, 0x8028
/* 18C8D4 8025DFF4 00220821 */  addu  $at, $at, $v0
/* 18C8D8 8025DFF8 8C224188 */  lw    $v0, 0x4188($at)
/* 18C8DC 8025DFFC 08097804 */  j     .L8025E010
/* 18C8E0 8025E000 ACE200B0 */   sw    $v0, 0xb0($a3)

.L8025E004:
/* 18C8E4 8025E004 3C028028 */  lui   $v0, 0x8028
/* 18C8E8 8025E008 8C4241B0 */  lw    $v0, 0x41b0($v0)
/* 18C8EC 8025E00C ACE200B0 */  sw    $v0, 0xb0($a3)
.L8025E010:
/* 18C8F0 8025E010 8CE200B4 */  lw    $v0, 0xb4($a3)
/* 18C8F4 8025E014 00021080 */  sll   $v0, $v0, 2
/* 18C8F8 8025E018 3C018028 */  lui   $at, 0x8028
/* 18C8FC 8025E01C 00220821 */  addu  $at, $at, $v0
/* 18C900 8025E020 8C224188 */  lw    $v0, 0x4188($at)
/* 18C904 8025E024 ACE200B4 */  sw    $v0, 0xb4($a3)
/* 18C908 8025E028 03E00008 */  jr    $ra
/* 18C90C 8025E02C 24020002 */   addiu $v0, $zero, 2

/* 18C910 8025E030 3C02802A */  lui   $v0, 0x802a
/* 18C914 8025E034 8C42FB78 */  lw    $v0, -0x488($v0)
/* 18C918 8025E038 0002102B */  sltu  $v0, $zero, $v0
/* 18C91C 8025E03C 03E00008 */  jr    $ra
/* 18C920 8025E040 00021040 */   sll   $v0, $v0, 1

/* 18C924 8025E044 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 18C928 8025E048 AFB00010 */  sw    $s0, 0x10($sp)
/* 18C92C 8025E04C 0080802D */  daddu $s0, $a0, $zero
/* 18C930 8025E050 AFBF0018 */  sw    $ra, 0x18($sp)
/* 18C934 8025E054 AFB10014 */  sw    $s1, 0x14($sp)
/* 18C938 8025E058 8E04009C */  lw    $a0, 0x9c($s0)
/* 18C93C 8025E05C 0C0B5059 */  jal   func_802D4164
/* 18C940 8025E060 3C11FFFF */   lui   $s1, 0xffff
/* 18C944 8025E064 8C440000 */  lw    $a0, ($v0)
/* 18C948 8025E068 0C048B77 */  jal   func_80122DDC
/* 18C94C 8025E06C 3631000F */   ori   $s1, $s1, 0xf
/* 18C950 8025E070 0040202D */  daddu $a0, $v0, $zero
/* 18C954 8025E074 8C820000 */  lw    $v0, ($a0)
/* 18C958 8025E078 00511024 */  and   $v0, $v0, $s1
/* 18C95C 8025E07C 34420008 */  ori   $v0, $v0, 8
/* 18C960 8025E080 AC820000 */  sw    $v0, ($a0)
/* 18C964 8025E084 0C0B5059 */  jal   func_802D4164
/* 18C968 8025E088 8E0400A0 */   lw    $a0, 0xa0($s0)
/* 18C96C 8025E08C 0C048B77 */  jal   func_80122DDC
/* 18C970 8025E090 8C440000 */   lw    $a0, ($v0)
/* 18C974 8025E094 0040202D */  daddu $a0, $v0, $zero
/* 18C978 8025E098 8C820000 */  lw    $v0, ($a0)
/* 18C97C 8025E09C 00511024 */  and   $v0, $v0, $s1
/* 18C980 8025E0A0 34420008 */  ori   $v0, $v0, 8
/* 18C984 8025E0A4 AC820000 */  sw    $v0, ($a0)
/* 18C988 8025E0A8 0C0B5059 */  jal   func_802D4164
/* 18C98C 8025E0AC 8E0400A4 */   lw    $a0, 0xa4($s0)
/* 18C990 8025E0B0 0C048B77 */  jal   func_80122DDC
/* 18C994 8025E0B4 8C440000 */   lw    $a0, ($v0)
/* 18C998 8025E0B8 0040202D */  daddu $a0, $v0, $zero
/* 18C99C 8025E0BC 8C820000 */  lw    $v0, ($a0)
/* 18C9A0 8025E0C0 00511024 */  and   $v0, $v0, $s1
/* 18C9A4 8025E0C4 34420008 */  ori   $v0, $v0, 8
/* 18C9A8 8025E0C8 AC820000 */  sw    $v0, ($a0)
/* 18C9AC 8025E0CC 0C0B5059 */  jal   func_802D4164
/* 18C9B0 8025E0D0 8E0400A8 */   lw    $a0, 0xa8($s0)
/* 18C9B4 8025E0D4 0C048B77 */  jal   func_80122DDC
/* 18C9B8 8025E0D8 8C440000 */   lw    $a0, ($v0)
/* 18C9BC 8025E0DC 0040202D */  daddu $a0, $v0, $zero
/* 18C9C0 8025E0E0 8C830000 */  lw    $v1, ($a0)
/* 18C9C4 8025E0E4 00711824 */  and   $v1, $v1, $s1
/* 18C9C8 8025E0E8 34630008 */  ori   $v1, $v1, 8
/* 18C9CC 8025E0EC AC830000 */  sw    $v1, ($a0)
/* 18C9D0 8025E0F0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 18C9D4 8025E0F4 8FB10014 */  lw    $s1, 0x14($sp)
/* 18C9D8 8025E0F8 8FB00010 */  lw    $s0, 0x10($sp)
/* 18C9DC 8025E0FC 24020002 */  addiu $v0, $zero, 2
/* 18C9E0 8025E100 03E00008 */  jr    $ra
/* 18C9E4 8025E104 27BD0020 */   addiu $sp, $sp, 0x20

/* 18C9E8 8025E108 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 18C9EC 8025E10C AFBF0010 */  sw    $ra, 0x10($sp)
/* 18C9F0 8025E110 0C0B5059 */  jal   func_802D4164
/* 18C9F4 8025E114 8C8400A8 */   lw    $a0, 0xa8($a0)
/* 18C9F8 8025E118 0C048B77 */  jal   func_80122DDC
/* 18C9FC 8025E11C 8C440000 */   lw    $a0, ($v0)
/* 18CA00 8025E120 3C05FFFF */  lui   $a1, 0xffff
/* 18CA04 8025E124 0040202D */  daddu $a0, $v0, $zero
/* 18CA08 8025E128 8C830000 */  lw    $v1, ($a0)
/* 18CA0C 8025E12C 34A5000F */  ori   $a1, $a1, 0xf
/* 18CA10 8025E130 00651824 */  and   $v1, $v1, $a1
/* 18CA14 8025E134 34630008 */  ori   $v1, $v1, 8
/* 18CA18 8025E138 AC830000 */  sw    $v1, ($a0)
/* 18CA1C 8025E13C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 18CA20 8025E140 24020002 */  addiu $v0, $zero, 2
/* 18CA24 8025E144 03E00008 */  jr    $ra
/* 18CA28 8025E148 27BD0018 */   addiu $sp, $sp, 0x18

/* 18CA2C 8025E14C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 18CA30 8025E150 24020078 */  addiu $v0, $zero, 0x78
/* 18CA34 8025E154 44801000 */  mtc1  $zero, $f2
/* 18CA38 8025E158 3C013F80 */  lui   $at, 0x3f80
/* 18CA3C 8025E15C 44810000 */  mtc1  $at, $f0
/* 18CA40 8025E160 3C0642C8 */  lui   $a2, 0x42c8
/* 18CA44 8025E164 44051000 */  mfc1  $a1, $f2
/* 18CA48 8025E168 24040003 */  addiu $a0, $zero, 3
/* 18CA4C 8025E16C AFBF0018 */  sw    $ra, 0x18($sp)
/* 18CA50 8025E170 AFA20014 */  sw    $v0, 0x14($sp)
/* 18CA54 8025E174 E7A00010 */  swc1  $f0, 0x10($sp)
/* 18CA58 8025E178 0C01C484 */  jal   func_80071210
/* 18CA5C 8025E17C 00A0382D */   daddu $a3, $a1, $zero
/* 18CA60 8025E180 8FBF0018 */  lw    $ra, 0x18($sp)
/* 18CA64 8025E184 24020002 */  addiu $v0, $zero, 2
/* 18CA68 8025E188 03E00008 */  jr    $ra
/* 18CA6C 8025E18C 27BD0020 */   addiu $sp, $sp, 0x20

