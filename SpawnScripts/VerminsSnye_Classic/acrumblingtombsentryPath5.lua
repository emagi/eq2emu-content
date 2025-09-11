--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath5.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.10 08:09:05
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
	MovementLoopAddLocation(NPC, 78.53 + MakeRandomInt(-2,2), -0.03, -32.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 87.75, 0.56, -32.45, 2, 0)
	MovementLoopAddLocation(NPC, 90.84 + MakeRandomInt(-2,2), -0.13, -34.14 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 84.72 + MakeRandomInt(-2,2), 0, -32.7 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 74.5 + MakeRandomInt(-2,2), -0.11, -32.7 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 78.53 + MakeRandomInt(-2,2), -0.03, -32.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 87.75, 0.56, -32.45, 2, 0)
	MovementLoopAddLocation(NPC, 90.84 + MakeRandomInt(-2,2), -0.13, -34.14 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 84.72 + MakeRandomInt(-2,2), 0, -32.7 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 74.5 + MakeRandomInt(-2,2), -0.11, -32.7 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 78.53 + MakeRandomInt(-2,2), -0.03, -32.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 72.09 + MakeRandomInt(-2,2), -0.1, -32.75 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 78.71 + MakeRandomInt(-2,2), -0.01, -32.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 71.74 + MakeRandomInt(-2,2), -0.08, -32.75 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

