--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/LikatheTortured.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.20 04:09:36
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(45 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(85 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 30.54, -0.1, 16.75, 2, 0)
	MovementLoopAddLocation(NPC, 28.68, 0.57, 12.37, 2, 0)
	MovementLoopAddLocation(NPC, 28.19, -0.02, 4.82, 2, 0)
	MovementLoopAddLocation(NPC, 28.09, 0.44, -18.65, 2, 0)
	MovementLoopAddLocation(NPC, 28.97, -0.07, -22.55, 2, 0)
	MovementLoopAddLocation(NPC, 35.91, -0.03, -29.49, 2, 0)
	MovementLoopAddLocation(NPC, 35.91, -0.03, -29.49, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 42.57, -0.05, -36.36, 2, 0)
	MovementLoopAddLocation(NPC, 44.25, 0, -40.38, 2, 0)
	MovementLoopAddLocation(NPC, 44.61, 0, -51.9, 2, 0)
	MovementLoopAddLocation(NPC, 44.61, 0, -51.9, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.35, 0.58, -60.67, 2, 0)
	MovementLoopAddLocation(NPC, 40.15, -0.13, -67.97, 2, 0)
	MovementLoopAddLocation(NPC, 36.73, 0.51, -71.48, 2, 0)
	MovementLoopAddLocation(NPC, 34.06, -0.14, -78.05, 2, 0)
	MovementLoopAddLocation(NPC, 34, 0.21, -84.44, 2, 0)
	MovementLoopAddLocation(NPC, 37.19, 0.06, -91.14, 2, 0)
	MovementLoopAddLocation(NPC, 43.4, -0.15, -97.12, 2, 0)
	MovementLoopAddLocation(NPC, 43.4, -0.15, -97.12, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 51.16, 0.16, -89.25, 2, 0)
	MovementLoopAddLocation(NPC, 57.2, 0.15, -83.94, 2, 0)
	MovementLoopAddLocation(NPC, 60.9, -0.01, -81.68, 2, 0)
	MovementLoopAddLocation(NPC, 60.9, -0.01, -81.68, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 69.07, -0.11, -81.89, 2, 0)
	MovementLoopAddLocation(NPC, 69.07, -0.11, -81.89, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 78.28, 0.54, -82.18, 2, 0)
	MovementLoopAddLocation(NPC, 89.35, 0.07, -81.78, 2, 0)
	MovementLoopAddLocation(NPC, 93.85, 0.06, -78.88, 2, 0)
	MovementLoopAddLocation(NPC, 95.64, -0.15, -74.91, 2, 0)
	MovementLoopAddLocation(NPC, 95.85, -0.15, -68.2, 2, 0)
	MovementLoopAddLocation(NPC, 95.85, -0.15, -68.2, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 96.05, 0.4, -57.72, 2, 0)
	MovementLoopAddLocation(NPC, 95.49, -0.74, -46.68, 2, 0)
	MovementLoopAddLocation(NPC, 95.49, -0.74, -46.68, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.22, -0.19, -39.55, 2, 0)
	MovementLoopAddLocation(NPC, 93.95, -0.08, -36.56, 2, 0)
	MovementLoopAddLocation(NPC, 88.41, 0.51, -33.38, 2, 0)
	MovementLoopAddLocation(NPC, 80.78, 0.01, -32.71, 2, 0)
	MovementLoopAddLocation(NPC, 80.78, 0.01, -32.71, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 69.45, -0.03, -32.32, 2, 0)
	MovementLoopAddLocation(NPC, 63.16, 0.28, -33.94, 2, 0)
	MovementLoopAddLocation(NPC, 61.14, 0, -37.13, 2, 0)
	MovementLoopAddLocation(NPC, 60.72, -0.1, -42.61, 2, 0)
	MovementLoopAddLocation(NPC, 60.72, -0.1, -42.61, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 59.34, 0.04, -46.7, 2, 0)
	MovementLoopAddLocation(NPC, 56.02, -0.03, -48.58, 2, 0)
	MovementLoopAddLocation(NPC, 44.9, -0.17, -48.63, 2, 0)
	MovementLoopAddLocation(NPC, 44.63, -0.08, -43.77, 2, 0)
	MovementLoopAddLocation(NPC, 44.47, 0, -38.97, 2, 0)
	MovementLoopAddLocation(NPC, 40.26, -0.09, -34.34, 2, 0)
	MovementLoopAddLocation(NPC, 29.79, 0.04, -24.6, 2, 0)
	MovementLoopAddLocation(NPC, 28, 0.44, -19.64, 2, 0)
	MovementLoopAddLocation(NPC, 28.06, 0, 8.2, 2, 0)
	MovementLoopAddLocation(NPC, 28.84, 0.57, 13.03, 2, 0)
end
