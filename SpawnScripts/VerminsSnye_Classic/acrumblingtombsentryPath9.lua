--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath9.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.18 06:09:08
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomWeapons(NPC)
    AddTimer(NPC, 6000, "ChoosePath")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChoosePath(NPC)
    SetPath = MakeRandomInt(1,3)
    if SetPath == 1 then 
        Path1(NPC)
    elseif SetPath == 2 then 
        Path2(NPC)
    elseif SetPath == 3 then
        Path3(NPC)
    end
end

function Path1(NPC)
	MovementLoopAddLocation(NPC, 36.41 + MakeRandomInt(-2,2), 0.52, -71.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.86, -0.14, -67.8, 2, 0)
	MovementLoopAddLocation(NPC, 42.33 + MakeRandomInt(-2,2), -0.04, -64.84 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.85, -0.15, -68, 2, 0)
	MovementLoopAddLocation(NPC, 37.39, 0.51, -71.75, 2, 0)
	MovementLoopAddLocation(NPC, 33.96 + MakeRandomInt(-2,2), -0.1, -76.43 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 33.95 + MakeRandomInt(-2,2), -0.14, -77.86 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 36.12, 0.2, -72.9, 2, 0)
	MovementLoopAddLocation(NPC, 38.57, 0.06, -69.76, 2, 0)
	MovementLoopAddLocation(NPC, 42.77 + MakeRandomInt(-2,2), 0.01, -63.99 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.95, -0.15, -67.88, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 36.41 + MakeRandomInt(-2,2), 0.52, -71.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 34.06, -0.12, -76.68, 2, 0)
	MovementLoopAddLocation(NPC, 33.62, 0.01, -82.22, 2, 0)
	MovementLoopAddLocation(NPC, 35.42 + MakeRandomInt(-2,2), -0.02, -88.85 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 34.28, 0.22, -84.21, 2, 0)
	MovementLoopAddLocation(NPC, 33.93 + MakeRandomInt(-2,2), -0.11, -76.98 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 33.67, -0.01, -82.6, 2, 0)
	MovementLoopAddLocation(NPC, 35.08 + MakeRandomInt(-2,2), -0.04, -87.68 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 33.7, -0.01, -82.62, 2, 0)
	MovementLoopAddLocation(NPC, 34.25 + MakeRandomInt(-2,2), -0.13, -76.71 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 36.41 + MakeRandomInt(-2,2), 0.52, -71.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.27, 0.03, -68.34, 2, 0)
	MovementLoopAddLocation(NPC, 42.55 + MakeRandomInt(-2,2), 0.02, -64.06 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 39.56, -0.12, -67.99, 2, 0)
	MovementLoopAddLocation(NPC, 37.21, 0.44, -71.35, 2, 0)
	MovementLoopAddLocation(NPC, 34.46 + MakeRandomInt(-2,2), -0.12, -77.27 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end