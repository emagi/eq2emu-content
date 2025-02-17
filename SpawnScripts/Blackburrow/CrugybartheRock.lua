--[[
    Script Name    : SpawnScripts/Blackburrow/CrugybartheRock.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.01 10:05:10
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(30 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(60 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -25.58, -7.53, -70.86, 2, math.random(35,45))
	MovementLoopAddLocation(NPC, -25.58, -7.53, -70.86, 2, 0)
	MovementLoopAddLocation(NPC, -26.8, -7.56, -66.15, 2, 0)
	MovementLoopAddLocation(NPC, -22.48, -7.49, -63.56, 2, 0)
	MovementLoopAddLocation(NPC, -18.17, -7.56, -62.22, 2, 0)
	MovementLoopAddLocation(NPC, -14.18, -7.36, -62.55, 2, 0)
	MovementLoopAddLocation(NPC, -7.76, -7.33, -63.54, 2, 0)
	MovementLoopAddLocation(NPC, -2.68, -7.21, -63.94, 2, 0)
	MovementLoopAddLocation(NPC, 3.3, -6.68, -63.4, 2, 0)
	MovementLoopAddLocation(NPC, 9.32, -5.69, -62.59, 2, 0)
	MovementLoopAddLocation(NPC, 7.42, -5.98, -62.96, 2, 0)
	MovementLoopAddLocation(NPC, 2.79, -6.75, -63.54, 2, 0)
	MovementLoopAddLocation(NPC, -2.73, -7.14, -63.5, 2, 0)
	MovementLoopAddLocation(NPC, -10.04, -7.31, -62.94, 2, 0)
	MovementLoopAddLocation(NPC, -15.37, -7.35, -62.17, 2, 0)
	MovementLoopAddLocation(NPC, -19.73, -7.5, -62.73, 2, 0)
	MovementLoopAddLocation(NPC, -21.03, -7.59, -65.23, 2, 0)
	MovementLoopAddLocation(NPC, -22.14, -7.52, -68.83, 2, 0)
	MovementLoopAddLocation(NPC, -25.13, -7.53, -70.86, 2, 0)
end

