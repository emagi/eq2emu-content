--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath11.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.18 08:09:02
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
	MovementLoopAddLocation(NPC, 76.05 + MakeRandomInt(-2,2), 0.51, -138.65 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 75.05, 0.01, -134.05, 2, 0)
	MovementLoopAddLocation(NPC, 75.44 + MakeRandomInt(-2,2), -0.21, -129.35 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 75.05, 0.01, -134.05, 2, 0)
	MovementLoopAddLocation(NPC, 75.63 + MakeRandomInt(-2,2), -0.14, -127.93 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 75.38 + MakeRandomInt(-2,2), -0.19, -129.88 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 76.05 + MakeRandomInt(-2,2), 0.51, -138.65 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 76.9, -0.14, -142.86, 2, 0)
	MovementLoopAddLocation(NPC, 83.43 + MakeRandomInt(-2,2), -0.04, -149.15 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 77.42 + MakeRandomInt(-2,2), -0.18, -142.82 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 83.83 + MakeRandomInt(-2,2), 0.04, -149.69 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 76.85 + MakeRandomInt(-2,2), -0.11, -142.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 76.05 + MakeRandomInt(-2,2), 0.51, -138.65 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 75.43 + MakeRandomInt(-2,2), -0.13, -127.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 76.03, 0.24, -137.65, 2, 0)
	MovementLoopAddLocation(NPC, 77.92 + MakeRandomInt(-2,2), -0.16, -143.13 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end