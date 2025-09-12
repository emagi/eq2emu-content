--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath7.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.11 07:09:13
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
	MovementLoopAddLocation(NPC, 44.49 + MakeRandomInt(-2,2), 0, -38.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.98, 0.02, -41.46, 2, 0)
	MovementLoopAddLocation(NPC, 44.74 + MakeRandomInt(-2,2), 0, -52.22 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.57 + MakeRandomInt(-2,2), -0.14, -47.78 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.98, 0, -39.82, 2, 0)
	MovementLoopAddLocation(NPC, 42.81 + MakeRandomInt(-2,2), -0.03, -36.28 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.15, 0.04, -37.86, 2, 0)
	MovementLoopAddLocation(NPC, 44.65 + MakeRandomInt(-2,2), -0.14, -47.83 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 44.49 + MakeRandomInt(-2,2), 0, -38.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 35.5 + MakeRandomInt(-2,2), 0.01, -29.68 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 38.66 + MakeRandomInt(-2,2), -0.04, -32.27 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 43.83, 0.02, -37.76, 2, 0)
	MovementLoopAddLocation(NPC, 44.7 + MakeRandomInt(-2,2), -0.12, -43.43 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.28, 0, -40, 2, 0)
	MovementLoopAddLocation(NPC, 42.46, -0.05, -36.34, 2, 0)
	MovementLoopAddLocation(NPC, 35.43 + MakeRandomInt(-2,2), 0.04, -29.93 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 44.49 + MakeRandomInt(-2,2), 0, -38.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.85 + MakeRandomInt(-2,2), -0.04, -45.26 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 44.59, 0, -40.22, 2, 0)
	MovementLoopAddLocation(NPC, 42.2 + MakeRandomInt(-2,2), -0.06, -36.1 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 43.84, 0, -38.18, 2, 0)
	MovementLoopAddLocation(NPC, 44.76 + MakeRandomInt(-2,2), -0.13, -47.07 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end
