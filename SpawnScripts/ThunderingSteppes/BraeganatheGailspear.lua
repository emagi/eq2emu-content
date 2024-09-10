--[[
    Script Name    : SpawnScripts/ThunderingSteppes/BraeganatheGailspear.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.25 09:08:45
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(225 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(375 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1187.7, 3.14, 455.51, 2, 0)
	MovementLoopAddLocation(NPC, 1107.28, 7.11, 424.09, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1022.84, 5.73, 441.67, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 949.21, 3.33, 433.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 990.1, 4.39, 457.73, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1151.28, 8.26, 510.92, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1111.87, 7.51, 459.88, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1039.68, 4.2, 510.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 945.57, 2.42, 444.71, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1062.22, 5.1, 428.15, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1137.39, 7.22, 441, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1216.82, 0.89, 458, 2, MakeRandomInt(8,15))
end