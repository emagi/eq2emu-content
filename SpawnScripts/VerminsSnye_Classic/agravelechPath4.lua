--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.06 01:09:56
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
    SetPath = MakeRandomInt(1,2)
    if SetPath == 1 then 
        Path1(NPC)
    elseif SetPath == 2 then 
        Path2(NPC)
    end
end

function Path1(NPC)
	MovementLoopAddLocation(NPC, 223.54 + MakeRandomInt(-2,2), -7.06, -46.87 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 219.71, -7, -51.23, 2, 0)
	MovementLoopAddLocation(NPC, 215.96 + MakeRandomInt(-2,2), -7, -54.29 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 220.93 + MakeRandomInt(-2,2), -6.95, -48.81 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 225.57 + MakeRandomInt(-2,2), -6.99, -44.84 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 220.14 + MakeRandomInt(-2,2), -6.99, -50.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 223.54 + MakeRandomInt(-2,2), -7.06, -46.87 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 229.49 + MakeRandomInt(-2,2), -6.95, -40.39 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 225.74 + MakeRandomInt(-2,2), -6.99, -44.92 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 229.71, -6.95, -40.3, 2, 0)
	MovementLoopAddLocation(NPC, 233.02, -6.5, -38.83, 2, 0)
	MovementLoopAddLocation(NPC, 236.51 + MakeRandomInt(-2,2), -6.98, -38.4 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 232.76, -6.46, -39.29, 2, 0)
	MovementLoopAddLocation(NPC, 229.09 + MakeRandomInt(-2,2), -7, -41.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 221.6 + MakeRandomInt(-2,2), -7, -48.74 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10), "ChoosePath")
end