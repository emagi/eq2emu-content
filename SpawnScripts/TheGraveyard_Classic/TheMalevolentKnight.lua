--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/TheMalevolentKnight.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 10:08:06
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua")

function spawn(NPC)
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
	MovementLoopAddLocation(NPC, 29.88, -10.13, 24.05, 2, 0)
	MovementLoopAddLocation(NPC, 29.88, -10.13, 24.05, 2, 0)
	MovementLoopAddLocation(NPC, 28.1, -10.12, 22.77, 2, 0)
	MovementLoopAddLocation(NPC, 21.23, -5.88, 17.57, 2, 0)
	MovementLoopAddLocation(NPC, 16.87, -5.88, 14.32, 2, 0)
	MovementLoopAddLocation(NPC, 19.3, -5.65, 8.88, 2, 0)
	MovementLoopAddLocation(NPC, 24.6, -5.14, -6.96, 2, 0)
	MovementLoopAddLocation(NPC, 25.29, -5.07, -16.98, 2, 0)
	MovementLoopAddLocation(NPC, 26.52, -4.95, -23.42, 2, 0)
	MovementLoopAddLocation(NPC, 28.96, -4.71, -31.5, 2, 0)
	MovementLoopAddLocation(NPC, 30.88, -4.52, -33.93, 2, 0)
	MovementLoopAddLocation(NPC, 43.99, -3.57, -43.32, 2, 0)
	MovementLoopAddLocation(NPC, 46.19, -3.39, -46.22, 2, 0)
	MovementLoopAddLocation(NPC, 47.19, -3.1, -49.45, 2, 0)
	MovementLoopAddLocation(NPC, 47.84, -3.25, -56.64, 2, 0)
	MovementLoopAddLocation(NPC, 47.84, -3.25, -56.64, 2, 0)
	MovementLoopAddLocation(NPC, 47.36, -3.16, -53.28, 2, 0)
	MovementLoopAddLocation(NPC, 46.98, -3.23, -47.78, 2, 0)
	MovementLoopAddLocation(NPC, 45.47, -3.45, -45.07, 2, 0)
	MovementLoopAddLocation(NPC, 32, -4.42, -35.23, 2, 0)
	MovementLoopAddLocation(NPC, 29.48, -4.66, -32.22, 2, 0)
	MovementLoopAddLocation(NPC, 25.88, -5.01, -21.74, 2, 0)
	MovementLoopAddLocation(NPC, 24.94, -5.1, -9.19, 2, 0)
	MovementLoopAddLocation(NPC, 21.43, -5.44, 5.02, 2, 0)
	MovementLoopAddLocation(NPC, 20.16, -5.57, 7.32, 2, 0)
	MovementLoopAddLocation(NPC, 17.16, -5.86, 7.21, 2, 0)
	MovementLoopAddLocation(NPC, 9.99, -6.47, 6.21, 2, 0)
	MovementLoopAddLocation(NPC, 3.66, -6.98, 5.32, 2, 0)
	MovementLoopAddLocation(NPC, -6.42, -7.8, 1.69, 2, 0)
	MovementLoopAddLocation(NPC, -11.23, -8.16, -2.25, 2, 0)
	MovementLoopAddLocation(NPC, -12.34, -8.24, -4.68, 2, 0)
	MovementLoopAddLocation(NPC, -14.65, -8.45, -9.34, 2, 0)
	MovementLoopAddLocation(NPC, -19.43, -8.85, -14.28, 2, 0)
	MovementLoopAddLocation(NPC, -23.52, -9.3, -22.75, 2, 0)
	MovementLoopAddLocation(NPC, -25.7, -9.57, -26.4, 2, 0)
	MovementLoopAddLocation(NPC, -35.64, -10.65, -35.42, 2, 0)
	MovementLoopAddLocation(NPC, -35.64, -10.65, -35.42, 2, 0)
	MovementLoopAddLocation(NPC, -31.24, -10.19, -31.17, 2, 0)
	MovementLoopAddLocation(NPC, -25.46, -9.54, -26.02, 2, 0)
	MovementLoopAddLocation(NPC, -22.86, -9.23, -22.67, 2, 0)
	MovementLoopAddLocation(NPC, -20.35, -8.93, -15.33, 2, 0)
	MovementLoopAddLocation(NPC, -16.96, -8.65, -10.87, 2, 0)
	MovementLoopAddLocation(NPC, -15.31, -8.5, -9.3, 2, 0)
	MovementLoopAddLocation(NPC, -14.52, -8.43, -8.12, 2, 0)
	MovementLoopAddLocation(NPC, -11.81, -8.21, -2.81, 2, 0)
	MovementLoopAddLocation(NPC, -10.24, -8.11, -1.2, 2, 0)
	MovementLoopAddLocation(NPC, -6.16, -7.78, 1.6, 2, 0)
	MovementLoopAddLocation(NPC, 0.22, -7.24, 3.93, 2, 0)
	MovementLoopAddLocation(NPC, 15.86, -5.98, 6.71, 2, 0)
	MovementLoopAddLocation(NPC, 18.19, -5.76, 7.71, 2, 0)
	MovementLoopAddLocation(NPC, 18.83, -5.7, 9.67, 2, 0)
	MovementLoopAddLocation(NPC, 18.19, -5.76, 11.4, 2, 0)
	MovementLoopAddLocation(NPC, 8.29, -6.59, 24.69, 2, 0)
	MovementLoopAddLocation(NPC, 4.63, -6.9, 28.68, 2, 0)
	MovementLoopAddLocation(NPC, 1.6, -7.15, 35.6, 2, 0)
	MovementLoopAddLocation(NPC, 0.66, -7.21, 43.06, 2, 0)
	MovementLoopAddLocation(NPC, 1.85, -7.13, 49.47, 2, 0)
	MovementLoopAddLocation(NPC, 4.41, -6.92, 53.72, 2, 0)
	MovementLoopAddLocation(NPC, 10.13, -6.45, 59.66, 2, 0)
	MovementLoopAddLocation(NPC, 13.1, -6.21, 60.96, 2, 0)
	MovementLoopAddLocation(NPC, 21.54, -5.43, 61.9, 2, 0)
	MovementLoopAddLocation(NPC, 26.17, -4.98, 63.9, 2, 0)
	MovementLoopAddLocation(NPC, 30.17, -4.59, 67.9, 2, 0)
	MovementLoopAddLocation(NPC, 32.51, -4.36, 72.23, 2, 0)
	MovementLoopAddLocation(NPC, 32.92, -4.33, 75.32, 2, 0)
	MovementLoopAddLocation(NPC, 32.92, -4.33, 75.32, 2, 0)
	MovementLoopAddLocation(NPC, 32.08, -4.41, 70.86, 2, 0)
	MovementLoopAddLocation(NPC, 30.19, -4.59, 67.47, 2, 0)
	MovementLoopAddLocation(NPC, 25.55, -5.04, 63.73, 2, 0)
	MovementLoopAddLocation(NPC, 21.28, -5.46, 62.28, 2, 0)
	MovementLoopAddLocation(NPC, 15.26, -6.04, 61.52, 2, 0)
	MovementLoopAddLocation(NPC, 11.94, -6.31, 60.25, 2, 0)
	MovementLoopAddLocation(NPC, 6.43, -6.76, 56.24, 2, 0)
	MovementLoopAddLocation(NPC, 3.54, -6.99, 53.13, 2, 0)
	MovementLoopAddLocation(NPC, 2.25, -7.09, 50.49, 2, 0)
	MovementLoopAddLocation(NPC, 0.77, -7.2, 44, 2, 0)
	MovementLoopAddLocation(NPC, 1.74, -7.14, 35.55, 2, 0)
	MovementLoopAddLocation(NPC, 4.88, -6.88, 28.53, 2, 0)
	MovementLoopAddLocation(NPC, 13.4, -6.19, 18.07, 2, 0)
	MovementLoopAddLocation(NPC, 16.53, -5.92, 16.49, 2, 0)
	MovementLoopAddLocation(NPC, 20.81, -5.88, 17.92, 2, 0)
	MovementLoopAddLocation(NPC, 28.3, -10.12, 22.99, 2, 0)
	MovementLoopAddLocation(NPC, 29.88, -10.13, 24.05, 2, 0)
	MovementLoopAddLocation(NPC, 29.88, -10.13, 24.05, 2, 0, "Action")
end

function Action(NPC,Spawn)
    Despawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end