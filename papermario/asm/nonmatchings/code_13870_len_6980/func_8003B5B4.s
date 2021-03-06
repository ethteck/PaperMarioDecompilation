.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003B5B4
/* 0169B4 8003B5B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0169B8 8003B5B8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0169BC 8003B5BC 0080802D */  daddu $s0, $a0, $zero
/* 0169C0 8003B5C0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0169C4 8003B5C4 00A0902D */  daddu $s2, $a1, $zero
/* 0169C8 8003B5C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0169CC 8003B5CC AFB1001C */  sw    $s1, 0x1c($sp)
/* 0169D0 8003B5D0 820200B6 */  lb    $v0, 0xb6($s0)
/* 0169D4 8003B5D4 10400034 */  beqz  $v0, .L8003B6A8
/* 0169D8 8003B5D8 00C0882D */   daddu $s1, $a2, $zero
/* 0169DC 8003B5DC 96040028 */  lhu   $a0, 0x28($s0)
/* 0169E0 8003B5E0 0C0B7A90 */  jal   func_802DEA40
/* 0169E4 8003B5E4 00000000 */   nop   
/* 0169E8 8003B5E8 AE0200C4 */  sw    $v0, 0xc4($s0)
/* 0169EC 8003B5EC 0040202D */  daddu $a0, $v0, $zero
/* 0169F0 8003B5F0 A20000C1 */  sb    $zero, 0xc1($s0)
/* 0169F4 8003B5F4 8C830000 */  lw    $v1, ($a0)
/* 0169F8 8003B5F8 2402FFFF */  addiu $v0, $zero, -1
/* 0169FC 8003B5FC 1062000B */  beq   $v1, $v0, .L8003B62C
/* 016A00 8003B600 0080182D */   daddu $v1, $a0, $zero
/* 016A04 8003B604 0040202D */  daddu $a0, $v0, $zero
.L8003B608:
/* 016A08 8003B608 920200C1 */  lbu   $v0, 0xc1($s0)
/* 016A0C 8003B60C 24420001 */  addiu $v0, $v0, 1
/* 016A10 8003B610 A20200C1 */  sb    $v0, 0xc1($s0)
/* 016A14 8003B614 00021600 */  sll   $v0, $v0, 0x18
/* 016A18 8003B618 00021583 */  sra   $v0, $v0, 0x16
/* 016A1C 8003B61C 00431021 */  addu  $v0, $v0, $v1
/* 016A20 8003B620 8C420000 */  lw    $v0, ($v0)
/* 016A24 8003B624 1444FFF8 */  bne   $v0, $a0, .L8003B608
/* 016A28 8003B628 00000000 */   nop   
.L8003B62C:
/* 016A2C 8003B62C 0C0B7A9B */  jal   func_802DEA6C
/* 016A30 8003B630 96040028 */   lhu   $a0, 0x28($s0)
/* 016A34 8003B634 820300C1 */  lb    $v1, 0xc1($s0)
/* 016A38 8003B638 0000302D */  daddu $a2, $zero, $zero
/* 016A3C 8003B63C 18600015 */  blez  $v1, .L8003B694
/* 016A40 8003B640 A20200C0 */   sb    $v0, 0xc0($s0)
/* 016A44 8003B644 240700C8 */  addiu $a3, $zero, 0xc8
.L8003B648:
/* 016A48 8003B648 8E0300C4 */  lw    $v1, 0xc4($s0)
/* 016A4C 8003B64C 00061080 */  sll   $v0, $a2, 2
/* 016A50 8003B650 00431021 */  addu  $v0, $v0, $v1
/* 016A54 8003B654 8C430000 */  lw    $v1, ($v0)
/* 016A58 8003B658 10600009 */  beqz  $v1, .L8003B680
/* 016A5C 8003B65C 02072821 */   addu  $a1, $s0, $a3
/* 016A60 8003B660 0000202D */  daddu $a0, $zero, $zero
.L8003B664:
/* 016A64 8003B664 94620000 */  lhu   $v0, ($v1)
/* 016A68 8003B668 24630002 */  addiu $v1, $v1, 2
/* 016A6C 8003B66C 24840001 */  addiu $a0, $a0, 1
/* 016A70 8003B670 A4A20000 */  sh    $v0, ($a1)
/* 016A74 8003B674 28820010 */  slti  $v0, $a0, 0x10
/* 016A78 8003B678 1440FFFA */  bnez  $v0, .L8003B664
/* 016A7C 8003B67C 24A50002 */   addiu $a1, $a1, 2
.L8003B680:
/* 016A80 8003B680 820200C1 */  lb    $v0, 0xc1($s0)
/* 016A84 8003B684 24C60001 */  addiu $a2, $a2, 1
/* 016A88 8003B688 00C2102A */  slt   $v0, $a2, $v0
/* 016A8C 8003B68C 1440FFEE */  bnez  $v0, .L8003B648
/* 016A90 8003B690 24E70020 */   addiu $a3, $a3, 0x20
.L8003B694:
/* 016A94 8003B694 2402FFFE */  addiu $v0, $zero, -2
/* 016A98 8003B698 A20200B7 */  sb    $v0, 0xb7($s0)
/* 016A9C 8003B69C A60000BE */  sh    $zero, 0xbe($s0)
/* 016AA0 8003B6A0 A20000B6 */  sb    $zero, 0xb6($s0)
/* 016AA4 8003B6A4 A60000BC */  sh    $zero, 0xbc($s0)
.L8003B6A8:
/* 016AA8 8003B6A8 860200BC */  lh    $v0, 0xbc($s0)
/* 016AAC 8003B6AC 14400013 */  bnez  $v0, .L8003B6FC
/* 016AB0 8003B6B0 00000000 */   nop   
/* 016AB4 8003B6B4 920200B7 */  lbu   $v0, 0xb7($s0)
/* 016AB8 8003B6B8 3C038007 */  lui   $v1, 0x8007
/* 016ABC 8003B6BC 24637BF0 */  addiu $v1, $v1, 0x7bf0
/* 016AC0 8003B6C0 24420002 */  addiu $v0, $v0, 2
/* 016AC4 8003B6C4 A20200B7 */  sb    $v0, 0xb7($s0)
/* 016AC8 8003B6C8 00021600 */  sll   $v0, $v0, 0x18
/* 016ACC 8003B6CC 00021603 */  sra   $v0, $v0, 0x18
/* 016AD0 8003B6D0 3C048007 */  lui   $a0, 0x8007
/* 016AD4 8003B6D4 00822021 */  addu  $a0, $a0, $v0
/* 016AD8 8003B6D8 90847BF0 */  lbu   $a0, 0x7bf0($a0)
/* 016ADC 8003B6DC 240200FF */  addiu $v0, $zero, 0xff
/* 016AE0 8003B6E0 50820001 */  beql  $a0, $v0, .L8003B6E8
/* 016AE4 8003B6E4 A20000B7 */   sb    $zero, 0xb7($s0)
.L8003B6E8:
/* 016AE8 8003B6E8 820200B7 */  lb    $v0, 0xb7($s0)
/* 016AEC 8003B6EC 00431021 */  addu  $v0, $v0, $v1
/* 016AF0 8003B6F0 90420001 */  lbu   $v0, 1($v0)
/* 016AF4 8003B6F4 00021042 */  srl   $v0, $v0, 1
/* 016AF8 8003B6F8 A60200BC */  sh    $v0, 0xbc($s0)
.L8003B6FC:
/* 016AFC 8003B6FC 960300BC */  lhu   $v1, 0xbc($s0)
/* 016B00 8003B700 820200B7 */  lb    $v0, 0xb7($s0)
/* 016B04 8003B704 2463FFFF */  addiu $v1, $v1, -1
/* 016B08 8003B708 3C048007 */  lui   $a0, 0x8007
/* 016B0C 8003B70C 00822021 */  addu  $a0, $a0, $v0
/* 016B10 8003B710 90847BF0 */  lbu   $a0, 0x7bf0($a0)
/* 016B14 8003B714 24020001 */  addiu $v0, $zero, 1
/* 016B18 8003B718 10820025 */  beq   $a0, $v0, .L8003B7B0
/* 016B1C 8003B71C A60300BC */   sh    $v1, 0xbc($s0)
/* 016B20 8003B720 28820002 */  slti  $v0, $a0, 2
/* 016B24 8003B724 10400005 */  beqz  $v0, .L8003B73C
/* 016B28 8003B728 24020002 */   addiu $v0, $zero, 2
/* 016B2C 8003B72C 10800007 */  beqz  $a0, .L8003B74C
/* 016B30 8003B730 00000000 */   nop   
/* 016B34 8003B734 0800EE2B */  j     .L8003B8AC
/* 016B38 8003B738 00000000 */   nop   

.L8003B73C:
/* 016B3C 8003B73C 1082003C */  beq   $a0, $v0, .L8003B830
/* 016B40 8003B740 00000000 */   nop   
/* 016B44 8003B744 0800EE2B */  j     .L8003B8AC
/* 016B48 8003B748 00000000 */   nop   

.L8003B74C:
/* 016B4C 8003B74C 820200C0 */  lb    $v0, 0xc0($s0)
/* 016B50 8003B750 18400056 */  blez  $v0, .L8003B8AC
/* 016B54 8003B754 0000302D */   daddu $a2, $zero, $zero
/* 016B58 8003B758 240700C8 */  addiu $a3, $zero, 0xc8
.L8003B75C:
/* 016B5C 8003B75C 8E0300C4 */  lw    $v1, 0xc4($s0)
/* 016B60 8003B760 00061080 */  sll   $v0, $a2, 2
/* 016B64 8003B764 00431021 */  addu  $v0, $v0, $v1
/* 016B68 8003B768 8C430000 */  lw    $v1, ($v0)
/* 016B6C 8003B76C 10600009 */  beqz  $v1, .L8003B794
/* 016B70 8003B770 02072821 */   addu  $a1, $s0, $a3
/* 016B74 8003B774 0000202D */  daddu $a0, $zero, $zero
.L8003B778:
/* 016B78 8003B778 94620000 */  lhu   $v0, ($v1)
/* 016B7C 8003B77C 24630002 */  addiu $v1, $v1, 2
/* 016B80 8003B780 24840001 */  addiu $a0, $a0, 1
/* 016B84 8003B784 A4A20000 */  sh    $v0, ($a1)
/* 016B88 8003B788 28820010 */  slti  $v0, $a0, 0x10
/* 016B8C 8003B78C 1440FFFA */  bnez  $v0, .L8003B778
/* 016B90 8003B790 24A50002 */   addiu $a1, $a1, 2
.L8003B794:
/* 016B94 8003B794 820200C0 */  lb    $v0, 0xc0($s0)
/* 016B98 8003B798 24C60001 */  addiu $a2, $a2, 1
/* 016B9C 8003B79C 00C2102A */  slt   $v0, $a2, $v0
/* 016BA0 8003B7A0 1440FFEE */  bnez  $v0, .L8003B75C
/* 016BA4 8003B7A4 24E70020 */   addiu $a3, $a3, 0x20
/* 016BA8 8003B7A8 0800EE2B */  j     .L8003B8AC
/* 016BAC 8003B7AC 00000000 */   nop   

.L8003B7B0:
/* 016BB0 8003B7B0 820200C0 */  lb    $v0, 0xc0($s0)
/* 016BB4 8003B7B4 920300C0 */  lbu   $v1, 0xc0($s0)
/* 016BB8 8003B7B8 1840003C */  blez  $v0, .L8003B8AC
/* 016BBC 8003B7BC 0000302D */   daddu $a2, $zero, $zero
/* 016BC0 8003B7C0 240700C8 */  addiu $a3, $zero, 0xc8
.L8003B7C4:
/* 016BC4 8003B7C4 00031600 */  sll   $v0, $v1, 0x18
/* 016BC8 8003B7C8 00021603 */  sra   $v0, $v0, 0x18
/* 016BCC 8003B7CC 00021880 */  sll   $v1, $v0, 2
/* 016BD0 8003B7D0 00621821 */  addu  $v1, $v1, $v0
/* 016BD4 8003B7D4 00661821 */  addu  $v1, $v1, $a2
/* 016BD8 8003B7D8 8E0200C4 */  lw    $v0, 0xc4($s0)
/* 016BDC 8003B7DC 00031880 */  sll   $v1, $v1, 2
/* 016BE0 8003B7E0 00621821 */  addu  $v1, $v1, $v0
/* 016BE4 8003B7E4 8C630000 */  lw    $v1, ($v1)
/* 016BE8 8003B7E8 10600009 */  beqz  $v1, .L8003B810
/* 016BEC 8003B7EC 02072821 */   addu  $a1, $s0, $a3
/* 016BF0 8003B7F0 0000202D */  daddu $a0, $zero, $zero
.L8003B7F4:
/* 016BF4 8003B7F4 94620000 */  lhu   $v0, ($v1)
/* 016BF8 8003B7F8 24630002 */  addiu $v1, $v1, 2
/* 016BFC 8003B7FC 24840001 */  addiu $a0, $a0, 1
/* 016C00 8003B800 A4A20000 */  sh    $v0, ($a1)
/* 016C04 8003B804 28820010 */  slti  $v0, $a0, 0x10
/* 016C08 8003B808 1440FFFA */  bnez  $v0, .L8003B7F4
/* 016C0C 8003B80C 24A50002 */   addiu $a1, $a1, 2
.L8003B810:
/* 016C10 8003B810 24C60001 */  addiu $a2, $a2, 1
/* 016C14 8003B814 820200C0 */  lb    $v0, 0xc0($s0)
/* 016C18 8003B818 920300C0 */  lbu   $v1, 0xc0($s0)
/* 016C1C 8003B81C 00C2102A */  slt   $v0, $a2, $v0
/* 016C20 8003B820 1440FFE8 */  bnez  $v0, .L8003B7C4
/* 016C24 8003B824 24E70020 */   addiu $a3, $a3, 0x20
/* 016C28 8003B828 0800EE2B */  j     .L8003B8AC
/* 016C2C 8003B82C 00000000 */   nop   

.L8003B830:
/* 016C30 8003B830 820200C0 */  lb    $v0, 0xc0($s0)
/* 016C34 8003B834 920300C0 */  lbu   $v1, 0xc0($s0)
/* 016C38 8003B838 1840001C */  blez  $v0, .L8003B8AC
/* 016C3C 8003B83C 0000302D */   daddu $a2, $zero, $zero
/* 016C40 8003B840 240700C8 */  addiu $a3, $zero, 0xc8
.L8003B844:
/* 016C44 8003B844 00031600 */  sll   $v0, $v1, 0x18
/* 016C48 8003B848 00021603 */  sra   $v0, $v0, 0x18
/* 016C4C 8003B84C 00021840 */  sll   $v1, $v0, 1
/* 016C50 8003B850 00621821 */  addu  $v1, $v1, $v0
/* 016C54 8003B854 00031840 */  sll   $v1, $v1, 1
/* 016C58 8003B858 00661821 */  addu  $v1, $v1, $a2
/* 016C5C 8003B85C 8E0200C4 */  lw    $v0, 0xc4($s0)
/* 016C60 8003B860 00031880 */  sll   $v1, $v1, 2
/* 016C64 8003B864 00621821 */  addu  $v1, $v1, $v0
/* 016C68 8003B868 8C630000 */  lw    $v1, ($v1)
/* 016C6C 8003B86C 10600009 */  beqz  $v1, .L8003B894
/* 016C70 8003B870 02072821 */   addu  $a1, $s0, $a3
/* 016C74 8003B874 0000202D */  daddu $a0, $zero, $zero
.L8003B878:
/* 016C78 8003B878 94620000 */  lhu   $v0, ($v1)
/* 016C7C 8003B87C 24630002 */  addiu $v1, $v1, 2
/* 016C80 8003B880 24840001 */  addiu $a0, $a0, 1
/* 016C84 8003B884 A4A20000 */  sh    $v0, ($a1)
/* 016C88 8003B888 28820010 */  slti  $v0, $a0, 0x10
/* 016C8C 8003B88C 1440FFFA */  bnez  $v0, .L8003B878
/* 016C90 8003B890 24A50002 */   addiu $a1, $a1, 2
.L8003B894:
/* 016C94 8003B894 24C60001 */  addiu $a2, $a2, 1
/* 016C98 8003B898 820200C0 */  lb    $v0, 0xc0($s0)
/* 016C9C 8003B89C 920300C0 */  lbu   $v1, 0xc0($s0)
/* 016CA0 8003B8A0 00C2102A */  slt   $v0, $a2, $v0
/* 016CA4 8003B8A4 1440FFE7 */  bnez  $v0, .L8003B844
/* 016CA8 8003B8A8 24E70020 */   addiu $a3, $a3, 0x20
.L8003B8AC:
/* 016CAC 8003B8AC 820200C1 */  lb    $v0, 0xc1($s0)
/* 016CB0 8003B8B0 1840000B */  blez  $v0, .L8003B8E0
/* 016CB4 8003B8B4 0000302D */   daddu $a2, $zero, $zero
/* 016CB8 8003B8B8 240400C8 */  addiu $a0, $zero, 0xc8
/* 016CBC 8003B8BC 0200182D */  daddu $v1, $s0, $zero
.L8003B8C0:
/* 016CC0 8003B8C0 02041021 */  addu  $v0, $s0, $a0
/* 016CC4 8003B8C4 24840020 */  addiu $a0, $a0, 0x20
/* 016CC8 8003B8C8 AC6202C8 */  sw    $v0, 0x2c8($v1)
/* 016CCC 8003B8CC 820200C1 */  lb    $v0, 0xc1($s0)
/* 016CD0 8003B8D0 24C60001 */  addiu $a2, $a2, 1
/* 016CD4 8003B8D4 00C2102A */  slt   $v0, $a2, $v0
/* 016CD8 8003B8D8 1440FFF9 */  bnez  $v0, .L8003B8C0
/* 016CDC 8003B8DC 24630004 */   addiu $v1, $v1, 4
.L8003B8E0:
/* 016CE0 8003B8E0 8E020000 */  lw    $v0, ($s0)
/* 016CE4 8003B8E4 3C034000 */  lui   $v1, 0x4000
/* 016CE8 8003B8E8 00431024 */  and   $v0, $v0, $v1
/* 016CEC 8003B8EC 14400016 */  bnez  $v0, .L8003B948
/* 016CF0 8003B8F0 0240282D */   daddu $a1, $s2, $zero
/* 016CF4 8003B8F4 920200AC */  lbu   $v0, 0xac($s0)
/* 016CF8 8003B8F8 920300AD */  lbu   $v1, 0xad($s0)
/* 016CFC 8003B8FC 00430018 */  mult  $v0, $v1
/* 016D00 8003B900 00001012 */  mflo  $v0
/* 016D04 8003B904 3C038080 */  lui   $v1, 0x8080
/* 016D08 8003B908 34638081 */  ori   $v1, $v1, 0x8081
/* 016D0C 8003B90C 00430018 */  mult  $v0, $v1
/* 016D10 8003B910 8E030024 */  lw    $v1, 0x24($s0)
/* 016D14 8003B914 260702C8 */  addiu $a3, $s0, 0x2c8
/* 016D18 8003B918 AFB10010 */  sw    $s1, 0x10($sp)
/* 016D1C 8003B91C 00004810 */  mfhi  $t1
/* 016D20 8003B920 01223021 */  addu  $a2, $t1, $v0
/* 016D24 8003B924 000631C3 */  sra   $a2, $a2, 7
/* 016D28 8003B928 000217C3 */  sra   $v0, $v0, 0x1f
/* 016D2C 8003B92C 00C23023 */  subu  $a2, $a2, $v0
/* 016D30 8003B930 28C400FF */  slti  $a0, $a2, 0xff
/* 016D34 8003B934 000427C0 */  sll   $a0, $a0, 0x1f
/* 016D38 8003B938 3C022000 */  lui   $v0, 0x2000
/* 016D3C 8003B93C 00822025 */  or    $a0, $a0, $v0
/* 016D40 8003B940 0C0B78F6 */  jal   func_802DE3D8
/* 016D44 8003B944 00642025 */   or    $a0, $v1, $a0
.L8003B948:
/* 016D48 8003B948 960200BE */  lhu   $v0, 0xbe($s0)
/* 016D4C 8003B94C 2442FFFF */  addiu $v0, $v0, -1
/* 016D50 8003B950 A60200BE */  sh    $v0, 0xbe($s0)
/* 016D54 8003B954 8FBF0024 */  lw    $ra, 0x24($sp)
/* 016D58 8003B958 8FB20020 */  lw    $s2, 0x20($sp)
/* 016D5C 8003B95C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 016D60 8003B960 8FB00018 */  lw    $s0, 0x18($sp)
/* 016D64 8003B964 03E00008 */  jr    $ra
/* 016D68 8003B968 27BD0028 */   addiu $sp, $sp, 0x28

