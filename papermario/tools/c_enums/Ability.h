#ifndef _ABILITY_
#define _ABILITY_

#include "ultra64.h"
#include "types.h"

typedef enum Ability {
	DODGE_MASTER = 0x00000000,
	UNUSED = 0x00000001,
	SPIKE_SHIELD = 0x00000002,
	FIRST_ATTACK = 0x00000003,
	H_P_PLUS = 0x00000004,
	DOUBLE_DIP = 0x00000005,
	MYSTERY_SCROLL = 0x00000006,
	FIRE_SHIELD = 0x00000007,
	PRETTY_LUCKY = 0x00000008,
	H_P_DRAIN = 0x00000009,
	ALL_OR_NOTHING = 0x0000000A,
	SLOW_GO = 0x0000000B,
	F_P_PLUS = 0x0000000C,
	ICE_POWER = 0x0000000D,
	FEELING_FINE = 0x0000000E,
	ATTACK_F_X = 0x0000000F,
	MONEY_MONEY = 0x00000010,
	CHILL_OUT = 0x00000011,
	HAPPY_HEART = 0x00000012,
	ZAP_TAP = 0x00000013,
	MEGA_RUSH = 0x00000014,
	BERSERKER = 0x00000015,
	RIGHT_ON = 0x00000016,
	RUNAWAY_PAY = 0x00000017,
	FLOWER_SAVER = 0x00000018,
	PAY_OFF = 0x00000019,
	QUICK_CHANGE = 0x0000001A,
	DEFEND_PLUS = 0x0000001B,
	POWER_PLUS = 0x0000001C,
	REFUND = 0x0000001D,
	POWER_RUSH = 0x0000001E,
	CRAZY_HEART = 0x0000001F,
	LAST_STAND = 0x00000020,
	CLOSE_CALL = 0x00000021,
	P_UP_D_DOWN = 0x00000022,
	LUCKY_DAY = 0x00000023,
	MEGA_H_P_DRAIN = 0x00000024,
	P_DOWN_D_UP = 0x00000025,
	FLOWER_FANATIC = 0x00000026,
	SPEEDY_SPIN = 0x00000027,
	SPIN_ATTACK = 0x00000028,
	I_SPY = 0x00000029,
	BUMP_ATTACK = 0x0000002A,
	HEART_FINDER = 0x0000002B,
	FLOWER_FINDER = 0x0000002C,
	DIZZY_ATTACK = 0x0000002D,
	FINAL_GOOMPA = 0x0000002E,
	FINAL_BOMBOMB = 0x0000002F,
	DEEP_FOCUS = 0x00000030,
	SUPER_FOCUS = 0x00000031,
	KAIDEN = 0x00000032,
	DAMAGE_DODGE = 0x00000033,
	HAPPY_FLOWER = 0x00000034,
	GROUP_FOCUS = 0x00000035,
	PEEKABOO = 0x00000036,
	HEALTHY_HEALTHY = 0x00000037
} Ability;

#endif