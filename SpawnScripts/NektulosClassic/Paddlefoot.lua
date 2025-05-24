--[[
    Script Name    : SpawnScripts/NektulosClassic/Paddlefoot.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.23 08:05:42
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(100 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(240 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -212.8, 3.35, -291.78, 2, 0)
	MovementLoopAddLocation(NPC, -220.47, 4.83, -290.11, 2, 0)
	MovementLoopAddLocation(NPC, -227.16, 4.32, -286.68, 2, 0)
	MovementLoopAddLocation(NPC, -234.23, 3.38, -271.96, 2, 0)
	MovementLoopAddLocation(NPC, -241.53, 2.72, -261.96, 2, 0)
	MovementLoopAddLocation(NPC, -239.53, 3.13, -253.6, 2, 0)
	MovementLoopAddLocation(NPC, -242.68, 3.1, -241.5, 2, 0)
	MovementLoopAddLocation(NPC, -232.24, 3.49, -229.49, 2, 0)
	MovementLoopAddLocation(NPC, -225.13, 3.45, -214.97, 2, 0)
	MovementLoopAddLocation(NPC, -212.28, -0.06, -213.9, 2, 0)
	MovementLoopAddLocation(NPC, -199.36, 2.88, -214.48, 2, 0)
	MovementLoopAddLocation(NPC, -189.35, 3.66, -221.35, 2, 0)
	MovementLoopAddLocation(NPC, -176.77, 3.37, -237.44, 2, 0)
	MovementLoopAddLocation(NPC, -177.41, 3.43, -247.74, 2, 0)
	MovementLoopAddLocation(NPC, -187.06, 3.49, -258.12, 2, 0)
	MovementLoopAddLocation(NPC, -191.95, 3.49, -275.38, 2, 0)
	MovementLoopAddLocation(NPC, -197.87, 3.49, -285.34, 2, 0)
end
