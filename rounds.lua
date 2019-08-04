--== INFO ==--

--== round_name
--==	*Necasarilly*
--==	Name of this round 
--==	Note: Do not forgot "Round" at the end
--==E.G. round_name = "Laser round"

--== items
--==	*Optional* (if you want knive round)
--==	Table with items that players must carry
--==	Note: Use comma to make several value of items
--== E.G. items = {32, 2}

--== inf_weapons 
--== 	*Optional*
--==	Table with weapon types that must have infinity ammo
--==	Note: Use comma to make several value of items
--==	Note2: It wont work if round dosent have table "items"
--== E.G. inf_weapons = {32, 45}

--== set_weapon
--==	*Optional* (if all players must spawn with seted weapon knife)
--==	Players will spawn equiped with that weapon type
--==	Note: It wont work if round dosent have table "items"
--== E.G. set_weapon = 32

--== Tspawns
--==	*Optional* (if terrorists must spawn at map's spawn entities)
--==	Custom terrorist spawn position
--==	Note: First argument is X second is Y (in tiles)
--==	Note2: You able to make several terrorist spawn positions
--== E.G. Tspawns = {
--==		[1] = {4, 5},
--==		[2] = {5, 2},
--== 	}

--== CTspawns
--==	*Optional* (if counter - terrorists must spawn at map's spawn entities)
--==	Custom counter - terrorist spawn position
--==	Note: First argument is X second is Y (in tiles)
--==	Note2: You able to make several counter - terrorist spawn positions
--== E.G. CTspawns = {
--==		[1] = {4, 1},
--==		[2] = {5, 2},
--== 	}

--== Floor items
--==	*Optional* 
--==	Spawn round items
--==	Note: First argument is weapon type, second is X, third is Y
--==	Note: You able to make several types of items
--== E.G. floor_items = {
--==		[1] = {47, 50, 14},
--==		[2] = {47, 51, 14},
--==		[3] = {47, 52, 14},
--==		[4] = {47, 53, 14},
--==		[5] = {47, 50, 15},
--==		[6] = {47, 51, 15},
--==		[7] = {47, 52, 15},
--==		[8] = {47, 53, 15},
--==	},

round[1] = {
	round_name = "Deagle & M4A1 Round",
	items = {32, 3},
	set_weapon = 32,
}

round[2] = {
	round_name = "MP5 Round",
	items = {20},
	set_weapon = 20,
}

round[3] = {
	round_name = "Grenade Launcher Round",
	items = {49},
	inf_weapons = {49},
	set_weapon = 49,
}

round[4] = {
	round_name = "Flame Round",
	items = {46},
	set_weapon = 46,
}

round[5] = {
	round_name = "Flame & Stealth Round",
	items = {84, 46},
	set_weapon = 46,
}

round[6] = {
	round_name = "Flame & Stealth & Portal Round",
	items = {84, 46, 88},
	set_weapon = 46,
}

round[7] = {
	round_name = "Laser Round",
	items = {45},
	set_weapon = 45,
}

round[8] = {
	round_name = "Laser & Stealth Round",
	items = {45, 84},
	set_weapon = 45,
}

round[9] = {
	round_name = "Laser & Stealth & Portal Round",
	items = {45, 84, 88},
	set_weapon = 45,
}

round[10] = {
	round_name = "M4A1 Round",
	items = {32},
	set_weapon = 32,
}

round[11] = {
	round_name = "RPG Pwnage Round",
	Tspawns = {
		[1] = {49, 9},
		[2] = {51, 9},
		[3] = {52, 9},
		[4] = {54, 9},
	},
	CTspawns = {
		[1] = {49, 20},
		[2] = {51, 20},
		[3] = {52, 20},
		[4] = {54, 20},
	},
	floor_items = {
		[1] = {47, 50, 14},
		[2] = {47, 51, 14},
		[3] = {47, 52, 14},
		[4] = {47, 53, 14},
		[5] = {47, 50, 15},
		[6] = {47, 51, 15},
		[7] = {47, 52, 15},
		[8] = {47, 53, 15},
	},
}

round[12] = {
	round_name = "Close Machete Round",
	items = {69},
	set_weapon = 69,
	Tspawns = {
		[1] = {40, 41},
		[2] = {40, 42},
	},
	CTspawns = {
		[1] = {51, 41},
		[2] = {51, 42},
	},
}

round[13] = {
	round_name = "Close Knive Round",
	Tspawns = {
		[1] = {82, 62},
	},
	CTspawns = {
		[1] = {80, 64},
	},
}

round[14] = {
	round_name = "Gas Ownage Round",
	items = {72},
	set_weapon = 72,
	inf_weapons = {72},
	Tspawns = {
		[1] = {38, 61},
		[2] = {38, 62},
		[3] = {38, 63},
		[4] = {38, 64},
		[5] = {38, 65},
		[6] = {38, 66},
		[7] = {38, 67},
		[8] = {38, 68},
	},
	CTspawns = {
		[1] = {62, 61},
		[2] = {62, 62},
		[3] = {62, 63},
		[4] = {62, 64},
		[5] = {62, 65},
		[6] = {62, 66},
		[7] = {62, 67},
		[8] = {62, 68},
	},
}

round[15] = {
	round_name = "Chainsaw Ownage Round",
	items = {85},
	set_weapon = 85,
	Tspawns = {
		[1] = {30, 41},
		[2] = {30, 42},
	},
	CTspawns = {
		[1] = {35, 41},
		[2] = {35, 42},
	},
}

round[16] = {
	round_name = "Luck With M249 Round",
	Tspawns = {
		[1] = {38, 64},
		[2] = {38, 65},
	},
	CTspawns = {
		[1] = {62, 64},
		[2] = {62, 65},
	},
	floor_items = {
		[1] = {40, 50, 64},
		[2] = {40, 50, 65},
	},
}

round[17] = {
	round_name = "Mine Round",
	items = {77, 87},
	inf_weapons = {77, 87},
	set_weapon = 77,
	Tspawns = {
		[1] = {53, 49},
		[2] = {51, 51},
	},
	CTspawns = {
		[1] = {65, 55},
		[2] = {65, 54},
	},
}
