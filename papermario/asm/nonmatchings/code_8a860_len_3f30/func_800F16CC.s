.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800F16CC
/* 08AB7C 800F16CC 3C028011 */  lui   $v0, 0x8011
/* 08AB80 800F16D0 8042D68E */  lb    $v0, -0x2972($v0)
/* 08AB84 800F16D4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08AB88 800F16D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08AB8C 800F16DC AFB20018 */  sw    $s2, 0x18($sp)
/* 08AB90 800F16E0 AFB10014 */  sw    $s1, 0x14($sp)
/* 08AB94 800F16E4 1040002B */  beqz  $v0, .L800F1794
/* 08AB98 800F16E8 AFB00010 */   sw    $s0, 0x10($sp)
/* 08AB9C 800F16EC 3C028011 */  lui   $v0, 0x8011
/* 08ABA0 800F16F0 8C42D69C */  lw    $v0, -0x2964($v0)
/* 08ABA4 800F16F4 8C430318 */  lw    $v1, 0x318($v0)
/* 08ABA8 800F16F8 2C62000E */  sltiu $v0, $v1, 0xe
/* 08ABAC 800F16FC 10400020 */  beqz  $v0, .L800F1780
/* 08ABB0 800F1700 00031080 */   sll   $v0, $v1, 2
/* 08ABB4 800F1704 3C018011 */  lui   $at, 0x8011
/* 08ABB8 800F1708 00220821 */  addu  $at, $at, $v0
/* 08ABBC 800F170C 8C22C3A0 */  lw    $v0, -0x3c60($at)
/* 08ABC0 800F1710 00400008 */  jr    $v0
/* 08ABC4 800F1714 00000000 */   nop   
/* 08ABC8 800F1718 2404000E */  addiu $a0, $zero, 0xe
/* 08ABCC 800F171C 3C108014 */  lui   $s0, 0x8014
/* 08ABD0 800F1720 26107474 */  addiu $s0, $s0, 0x7474
/* 08ABD4 800F1724 0C051F9F */  jal   func_80147E7C
/* 08ABD8 800F1728 0200282D */   daddu $a1, $s0, $zero
/* 08ABDC 800F172C 0803C5D3 */  j     .L800F174C
/* 08ABE0 800F1730 24040001 */   addiu $a0, $zero, 1

/* 08ABE4 800F1734 2404000E */  addiu $a0, $zero, 0xe
/* 08ABE8 800F1738 3C108014 */  lui   $s0, 0x8014
/* 08ABEC 800F173C 26107474 */  addiu $s0, $s0, 0x7474
/* 08ABF0 800F1740 0C051F9F */  jal   func_80147E7C
/* 08ABF4 800F1744 0200282D */   daddu $a1, $s0, $zero
/* 08ABF8 800F1748 24040002 */  addiu $a0, $zero, 2
.L800F174C:
/* 08ABFC 800F174C 0C05272D */  jal   play_sound
/* 08AC00 800F1750 00000000 */   nop   
/* 08AC04 800F1754 24040013 */  addiu $a0, $zero, 0x13
/* 08AC08 800F1758 0C051F9F */  jal   func_80147E7C
/* 08AC0C 800F175C 0200282D */   daddu $a1, $s0, $zero
/* 08AC10 800F1760 0803C5E1 */  j     .L800F1784
/* 08AC14 800F1764 24040015 */   addiu $a0, $zero, 0x15

/* 08AC18 800F1768 3C058014 */  lui   $a1, 0x8014
/* 08AC1C 800F176C 24A57474 */  addiu $a1, $a1, 0x7474
/* 08AC20 800F1770 0C051F9F */  jal   func_80147E7C
/* 08AC24 800F1774 2404000E */   addiu $a0, $zero, 0xe
/* 08AC28 800F1778 0C05272D */  jal   play_sound
/* 08AC2C 800F177C 24040001 */   addiu $a0, $zero, 1
.L800F1780:
/* 08AC30 800F1780 24040015 */  addiu $a0, $zero, 0x15
.L800F1784:
/* 08AC34 800F1784 3C058014 */  lui   $a1, 0x8014
/* 08AC38 800F1788 24A57474 */  addiu $a1, $a1, 0x7474
/* 08AC3C 800F178C 0803C5FC */  j     .L800F17F0
/* 08AC40 800F1790 00000000 */   nop   

.L800F1794:
/* 08AC44 800F1794 3C028011 */  lui   $v0, 0x8011
/* 08AC48 800F1798 8C42D69C */  lw    $v0, -0x2964($v0)
/* 08AC4C 800F179C 8C430318 */  lw    $v1, 0x318($v0)
/* 08AC50 800F17A0 2C62000E */  sltiu $v0, $v1, 0xe
/* 08AC54 800F17A4 10400014 */  beqz  $v0, .L800F17F8
/* 08AC58 800F17A8 00031080 */   sll   $v0, $v1, 2
/* 08AC5C 800F17AC 3C018011 */  lui   $at, 0x8011
/* 08AC60 800F17B0 00220821 */  addu  $at, $at, $v0
/* 08AC64 800F17B4 8C22C3D8 */  lw    $v0, -0x3c28($at)
/* 08AC68 800F17B8 00400008 */  jr    $v0
/* 08AC6C 800F17BC 00000000 */   nop   
/* 08AC70 800F17C0 2404000E */  addiu $a0, $zero, 0xe
/* 08AC74 800F17C4 0C051F9F */  jal   func_80147E7C
/* 08AC78 800F17C8 24050001 */   addiu $a1, $zero, 1
/* 08AC7C 800F17CC 0803C5FB */  j     .L800F17EC
/* 08AC80 800F17D0 24040013 */   addiu $a0, $zero, 0x13

/* 08AC84 800F17D4 2404000E */  addiu $a0, $zero, 0xe
/* 08AC88 800F17D8 0C051F9F */  jal   func_80147E7C
/* 08AC8C 800F17DC 24050001 */   addiu $a1, $zero, 1
/* 08AC90 800F17E0 0803C5FB */  j     .L800F17EC
/* 08AC94 800F17E4 24040013 */   addiu $a0, $zero, 0x13

/* 08AC98 800F17E8 2404000E */  addiu $a0, $zero, 0xe
.L800F17EC:
/* 08AC9C 800F17EC 24050001 */  addiu $a1, $zero, 1
.L800F17F0:
/* 08ACA0 800F17F0 0C051F9F */  jal   func_80147E7C
/* 08ACA4 800F17F4 00000000 */   nop   
.L800F17F8:
/* 08ACA8 800F17F8 3C118011 */  lui   $s1, 0x8011
/* 08ACAC 800F17FC 2631D69C */  addiu $s1, $s1, -0x2964
/* 08ACB0 800F1800 8E220000 */  lw    $v0, ($s1)
/* 08ACB4 800F1804 8C420318 */  lw    $v0, 0x318($v0)
/* 08ACB8 800F1808 24120003 */  addiu $s2, $zero, 3
/* 08ACBC 800F180C 14520008 */  bne   $v0, $s2, .L800F1830
/* 08ACC0 800F1810 24040010 */   addiu $a0, $zero, 0x10
/* 08ACC4 800F1814 3C108014 */  lui   $s0, 0x8014
/* 08ACC8 800F1818 26107474 */  addiu $s0, $s0, 0x7474
/* 08ACCC 800F181C 0C051F9F */  jal   func_80147E7C
/* 08ACD0 800F1820 0200282D */   daddu $a1, $s0, $zero
/* 08ACD4 800F1824 24040014 */  addiu $a0, $zero, 0x14
/* 08ACD8 800F1828 0C051F9F */  jal   func_80147E7C
/* 08ACDC 800F182C 0200282D */   daddu $a1, $s0, $zero
.L800F1830:
/* 08ACE0 800F1830 8E220000 */  lw    $v0, ($s1)
/* 08ACE4 800F1834 8C420318 */  lw    $v0, 0x318($v0)
/* 08ACE8 800F1838 24100004 */  addiu $s0, $zero, 4
/* 08ACEC 800F183C 14500005 */  bne   $v0, $s0, .L800F1854
/* 08ACF0 800F1840 00000000 */   nop   
/* 08ACF4 800F1844 3C058014 */  lui   $a1, 0x8014
/* 08ACF8 800F1848 24A57474 */  addiu $a1, $a1, 0x7474
/* 08ACFC 800F184C 0C051F9F */  jal   func_80147E7C
/* 08AD00 800F1850 24040012 */   addiu $a0, $zero, 0x12
.L800F1854:
/* 08AD04 800F1854 8E220000 */  lw    $v0, ($s1)
/* 08AD08 800F1858 8C430318 */  lw    $v1, 0x318($v0)
/* 08AD0C 800F185C 24020005 */  addiu $v0, $zero, 5
/* 08AD10 800F1860 14620006 */  bne   $v1, $v0, .L800F187C
/* 08AD14 800F1864 240500FF */   addiu $a1, $zero, 0xff
/* 08AD18 800F1868 3C058014 */  lui   $a1, 0x8014
/* 08AD1C 800F186C 24A57474 */  addiu $a1, $a1, 0x7474
/* 08AD20 800F1870 0C051F9F */  jal   func_80147E7C
/* 08AD24 800F1874 24040010 */   addiu $a0, $zero, 0x10
/* 08AD28 800F1878 240500FF */  addiu $a1, $zero, 0xff
.L800F187C:
/* 08AD2C 800F187C 00A0302D */  daddu $a2, $a1, $zero
/* 08AD30 800F1880 3C048011 */  lui   $a0, 0x8011
/* 08AD34 800F1884 8C84D65C */  lw    $a0, -0x29a4($a0)
/* 08AD38 800F1888 0C0513BF */  jal   func_80144EFC
/* 08AD3C 800F188C 00A0382D */   daddu $a3, $a1, $zero
/* 08AD40 800F1890 240500FF */  addiu $a1, $zero, 0xff
/* 08AD44 800F1894 00A0302D */  daddu $a2, $a1, $zero
/* 08AD48 800F1898 3C048011 */  lui   $a0, 0x8011
/* 08AD4C 800F189C 8C84D678 */  lw    $a0, -0x2988($a0)
/* 08AD50 800F18A0 0C0513BF */  jal   func_80144EFC
/* 08AD54 800F18A4 00A0382D */   daddu $a3, $a1, $zero
/* 08AD58 800F18A8 240500FF */  addiu $a1, $zero, 0xff
/* 08AD5C 800F18AC 00A0302D */  daddu $a2, $a1, $zero
/* 08AD60 800F18B0 3C048011 */  lui   $a0, 0x8011
/* 08AD64 800F18B4 8C84D66C */  lw    $a0, -0x2994($a0)
/* 08AD68 800F18B8 0C0513BF */  jal   func_80144EFC
/* 08AD6C 800F18BC 00A0382D */   daddu $a3, $a1, $zero
/* 08AD70 800F18C0 240500FF */  addiu $a1, $zero, 0xff
/* 08AD74 800F18C4 00A0302D */  daddu $a2, $a1, $zero
/* 08AD78 800F18C8 3C048011 */  lui   $a0, 0x8011
/* 08AD7C 800F18CC 8C84D670 */  lw    $a0, -0x2990($a0)
/* 08AD80 800F18D0 0C0513BF */  jal   func_80144EFC
/* 08AD84 800F18D4 00A0382D */   daddu $a3, $a1, $zero
/* 08AD88 800F18D8 240500FF */  addiu $a1, $zero, 0xff
/* 08AD8C 800F18DC 00A0302D */  daddu $a2, $a1, $zero
/* 08AD90 800F18E0 3C048011 */  lui   $a0, 0x8011
/* 08AD94 800F18E4 8C84D674 */  lw    $a0, -0x298c($a0)
/* 08AD98 800F18E8 0C0513BF */  jal   func_80144EFC
/* 08AD9C 800F18EC 00A0382D */   daddu $a3, $a1, $zero
/* 08ADA0 800F18F0 8E220000 */  lw    $v0, ($s1)
/* 08ADA4 800F18F4 8C420318 */  lw    $v0, 0x318($v0)
/* 08ADA8 800F18F8 1452000C */  bne   $v0, $s2, .L800F192C
/* 08ADAC 800F18FC 240500FF */   addiu $a1, $zero, 0xff
/* 08ADB0 800F1900 00A0302D */  daddu $a2, $a1, $zero
/* 08ADB4 800F1904 3C048011 */  lui   $a0, 0x8011
/* 08ADB8 800F1908 8C84D660 */  lw    $a0, -0x29a0($a0)
/* 08ADBC 800F190C 0C0513BF */  jal   func_80144EFC
/* 08ADC0 800F1910 00A0382D */   daddu $a3, $a1, $zero
/* 08ADC4 800F1914 240500FF */  addiu $a1, $zero, 0xff
/* 08ADC8 800F1918 00A0302D */  daddu $a2, $a1, $zero
/* 08ADCC 800F191C 3C048011 */  lui   $a0, 0x8011
/* 08ADD0 800F1920 8C84D664 */  lw    $a0, -0x299c($a0)
/* 08ADD4 800F1924 0C0513BF */  jal   func_80144EFC
/* 08ADD8 800F1928 00A0382D */   daddu $a3, $a1, $zero
.L800F192C:
/* 08ADDC 800F192C 8E220000 */  lw    $v0, ($s1)
/* 08ADE0 800F1930 8C420318 */  lw    $v0, 0x318($v0)
/* 08ADE4 800F1934 1450000C */  bne   $v0, $s0, .L800F1968
/* 08ADE8 800F1938 240500FF */   addiu $a1, $zero, 0xff
/* 08ADEC 800F193C 00A0302D */  daddu $a2, $a1, $zero
/* 08ADF0 800F1940 3C048011 */  lui   $a0, 0x8011
/* 08ADF4 800F1944 8C84D660 */  lw    $a0, -0x29a0($a0)
/* 08ADF8 800F1948 0C0513BF */  jal   func_80144EFC
/* 08ADFC 800F194C 00A0382D */   daddu $a3, $a1, $zero
/* 08AE00 800F1950 240500FF */  addiu $a1, $zero, 0xff
/* 08AE04 800F1954 00A0302D */  daddu $a2, $a1, $zero
/* 08AE08 800F1958 3C048011 */  lui   $a0, 0x8011
/* 08AE0C 800F195C 8C84D664 */  lw    $a0, -0x299c($a0)
/* 08AE10 800F1960 0C0513BF */  jal   func_80144EFC
/* 08AE14 800F1964 00A0382D */   daddu $a3, $a1, $zero
.L800F1968:
/* 08AE18 800F1968 8E220000 */  lw    $v0, ($s1)
/* 08AE1C 800F196C 8C430318 */  lw    $v1, 0x318($v0)
/* 08AE20 800F1970 24020001 */  addiu $v0, $zero, 1
/* 08AE24 800F1974 10620003 */  beq   $v1, $v0, .L800F1984
/* 08AE28 800F1978 00000000 */   nop   
/* 08AE2C 800F197C 14700007 */  bne   $v1, $s0, .L800F199C
/* 08AE30 800F1980 00000000 */   nop   
.L800F1984:
/* 08AE34 800F1984 3C048011 */  lui   $a0, 0x8011
/* 08AE38 800F1988 8C84D668 */  lw    $a0, -0x2998($a0)
/* 08AE3C 800F198C 240500FF */  addiu $a1, $zero, 0xff
/* 08AE40 800F1990 00A0302D */  daddu $a2, $a1, $zero
/* 08AE44 800F1994 0C0513BF */  jal   func_80144EFC
/* 08AE48 800F1998 00A0382D */   daddu $a3, $a1, $zero
.L800F199C:
/* 08AE4C 800F199C 3C028011 */  lui   $v0, 0x8011
/* 08AE50 800F19A0 8C42D69C */  lw    $v0, -0x2964($v0)
/* 08AE54 800F19A4 8C430318 */  lw    $v1, 0x318($v0)
/* 08AE58 800F19A8 24020005 */  addiu $v0, $zero, 5
/* 08AE5C 800F19AC 14620006 */  bne   $v1, $v0, .L800F19C8
/* 08AE60 800F19B0 240500FF */   addiu $a1, $zero, 0xff
/* 08AE64 800F19B4 3C048011 */  lui   $a0, 0x8011
/* 08AE68 800F19B8 8C84D660 */  lw    $a0, -0x29a0($a0)
/* 08AE6C 800F19BC 00A0302D */  daddu $a2, $a1, $zero
/* 08AE70 800F19C0 0C0513BF */  jal   func_80144EFC
/* 08AE74 800F19C4 00A0382D */   daddu $a3, $a1, $zero
.L800F19C8:
/* 08AE78 800F19C8 3C048011 */  lui   $a0, 0x8011
/* 08AE7C 800F19CC 8C84D66C */  lw    $a0, -0x2994($a0)
/* 08AE80 800F19D0 3C058010 */  lui   $a1, 0x8010
/* 08AE84 800F19D4 24A54A28 */  addiu $a1, $a1, 0x4a28
/* 08AE88 800F19D8 0C0511FF */  jal   set_menu_icon_script
/* 08AE8C 800F19DC 00000000 */   nop   
/* 08AE90 800F19E0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08AE94 800F19E4 8FB20018 */  lw    $s2, 0x18($sp)
/* 08AE98 800F19E8 8FB10014 */  lw    $s1, 0x14($sp)
/* 08AE9C 800F19EC 8FB00010 */  lw    $s0, 0x10($sp)
/* 08AEA0 800F19F0 2402000A */  addiu $v0, $zero, 0xa
/* 08AEA4 800F19F4 3C018011 */  lui   $at, 0x8011
/* 08AEA8 800F19F8 A022D690 */  sb    $v0, -0x2970($at)
/* 08AEAC 800F19FC 24020014 */  addiu $v0, $zero, 0x14
/* 08AEB0 800F1A00 3C018011 */  lui   $at, 0x8011
/* 08AEB4 800F1A04 AC22D640 */  sw    $v0, -0x29c0($at)
/* 08AEB8 800F1A08 03E00008 */  jr    $ra
/* 08AEBC 800F1A0C 27BD0020 */   addiu $sp, $sp, 0x20

