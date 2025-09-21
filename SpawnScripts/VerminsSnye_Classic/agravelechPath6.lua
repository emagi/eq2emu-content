--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath6.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.20 01:09:20
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
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
	MovementLoopAddLocation(NPC, 118.18 + MakeRandomInt(-2,2), 0.61, -166.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 115.19, -0.01, -168.67, 2, 0)
	MovementLoopAddLocation(NPC, 110.61 + MakeRandomInt(-2,2), -0.05, -172.73 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 114.72 + MakeRandomInt(-2,2), -0.07, -168.28 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 118.18 + MakeRandomInt(-2,2), 0.61, -166.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 121.64, 0.03, -165.72, 2, 0)
	MovementLoopAddLocation(NPC, 124.77 + MakeRandomInt(-2,2), -0.02, -166.71 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 128.02, -0.09, -165.47, 2, 0)
	MovementLoopAddLocation(NPC, 130.68 + MakeRandomInt(-2,2), 0, -161.49 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 128.15, -0.05, -165.66, 2, 0)
	MovementLoopAddLocation(NPC, 124.03 + MakeRandomInt(-2,2), -0.06, -166.02 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 118.18 + MakeRandomInt(-2,2), 0.61, -166.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 114.09 + MakeRandomInt(-2,2), -0.12, -168.81 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 118.28, 0.6, -166.91, 2, 0)
	MovementLoopAddLocation(NPC, 125.01 + MakeRandomInt(-2,2), -0.1, -166.06 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

