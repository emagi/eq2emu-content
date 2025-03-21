--[[
    Script Name    : SpawnScripts/EastFreeport/LieutenantDracious.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.16 08:03:24
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(240 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(400 + dmgMod))
    FreeportGuard(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -179.47, -56.5, -101, 2, 0)
	MovementLoopAddLocation(NPC, -185.3, -56.66, -90.57, 2, 0)
	MovementLoopAddLocation(NPC, -191.64, -56.65, -65.91, 2, 0)
	MovementLoopAddLocation(NPC, -192.64, -56.46, -43.36, 2, 0)
	MovementLoopAddLocation(NPC, -190.56, -55.91, -16.59, 2, 0)
	MovementLoopAddLocation(NPC, -188.19, -57.3, 107.22, 2, 0)
	MovementLoopAddLocation(NPC, -188.19, -57.3, 107.22, 2, 0)
	MovementLoopAddLocation(NPC, -189.33, -55.93, 6.38, 2, 0)
	MovementLoopAddLocation(NPC, -192.63, -56.44, -40.41, 2, 0)
	MovementLoopAddLocation(NPC, -187.96, -56.69, -74.53, 2, 0)
	MovementLoopAddLocation(NPC, -179.47, -56.5, -101, 2, 0)
end