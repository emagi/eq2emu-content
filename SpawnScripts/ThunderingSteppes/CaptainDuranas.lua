--[[
    Script Name    : SpawnScripts/ThunderingSteppes/CaptainDuranas.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.28 01:08:20
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(135 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(275 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1249.57, -0.88, 505.73, 2, 0)
	MovementLoopAddLocation(NPC, 1252.37, 0.49, 487.52, 2, 0)
	MovementLoopAddLocation(NPC, 1219.66, 0.54, 486.29, 2, 0)
	MovementLoopAddLocation(NPC, 1161.63, 9.79, 520.35, 2, 0)
	MovementLoopAddLocation(NPC, 1134.57, 10.52, 545.42, 2, 0)
	MovementLoopAddLocation(NPC, 1128.62, 0.32, 591.66, 2, 0)
	MovementLoopAddLocation(NPC, 1157.19, -1.01, 656.25, 2, 0)
	MovementLoopAddLocation(NPC, 1176.52, -0.8, 633.97, 2, 0)
	MovementLoopAddLocation(NPC, 1174.6, 1.98, 597.81, 2, 0)
	MovementLoopAddLocation(NPC, 1200.92, 2.01, 548.49, 2, 0)
	MovementLoopAddLocation(NPC, 1249.57, -0.88, 505.73, 2, 0)
end