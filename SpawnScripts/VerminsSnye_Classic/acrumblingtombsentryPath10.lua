--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath10.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.18 07:09:52
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
	MovementLoopAddLocation(NPC, 65.61 + MakeRandomInt(-2,2), -0.21, -108.3 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 58.54, 0.04, -107.24, 2, 0)
	MovementLoopAddLocation(NPC, 52, -0.12, -106.75, 2, 0)
	MovementLoopAddLocation(NPC, 48.37 + MakeRandomInt(-2,2), 0.07, -102.59 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 51.36 + MakeRandomInt(-2,2), -0.2, -105.91 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 57.12, 0.04, -107.46, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 65.61 + MakeRandomInt(-2,2), -0.21, -108.3 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 72.12, 0.52, -113.7, 2, 0)
	MovementLoopAddLocation(NPC, 74.98 + MakeRandomInt(-2,2), -0.12, -118.05 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 75.58 + MakeRandomInt(-2,2), -0.02, -119.28 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 74.78, -0.22, -116.6, 2, 0)
	MovementLoopAddLocation(NPC, 71.01, 0.52, -113.01, 2, 0, "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 65.61 + MakeRandomInt(-2,2), -0.21, -108.3 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 58.73, 0.04, -107.46, 2, 0)
	MovementLoopAddLocation(NPC, 52.82 + MakeRandomInt(-2,2), -0.18, -106.69 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 57.06, 0.04, -107.23, 2, 0)
	MovementLoopAddLocation(NPC, 63.06, 0.01, -107.55, 2, 0)
	MovementLoopAddLocation(NPC, 67.7, -0.21, -109.45, 2, 0)
	MovementLoopAddLocation(NPC, 74.76 + MakeRandomInt(-2,2), -0.14, -117.67 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 71.72, 0.52, -113.7, 2, 0, "ChoosePath")
end