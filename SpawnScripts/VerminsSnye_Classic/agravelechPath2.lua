--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.31 08:03:05
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
	MovementLoopAddLocation(NPC, 213.7 + MakeRandomInt(-2,2), -6.93, -112.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(2,5))
	MovementLoopAddLocation(NPC, 207.14 + MakeRandomInt(-2,2), -6.97, -119.46 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 201.39 + MakeRandomInt(-2,2), -6.45, -122.16 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 197.37 + MakeRandomInt(-2,2), -7.02, -121.21 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 194.03 + MakeRandomInt(-2,2), -7.04, -117.82 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 196.92 + MakeRandomInt(-2,2), -7.01, -120.88 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 202.42 + MakeRandomInt(-2,2), -6.58, -121.76 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 209.73 + MakeRandomInt(-2,2), -6.83, -115.65 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 205.47 + MakeRandomInt(-2,2), -7.02, -120.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 213.7 + MakeRandomInt(-2,2), -6.93, -112.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 213.7 + MakeRandomInt(-2,2), -6.93, -112.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(2,5))
	MovementLoopAddLocation(NPC, 218.26 + MakeRandomInt(-2,2), -6.93, -107.88 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 221.86 + MakeRandomInt(-2,2), -6.87, -104.56 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 221.86 + MakeRandomInt(-2,2), -6.85, -92.93 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 222.31 + MakeRandomInt(-2,2), -6.92, -98.81 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 221.55 + MakeRandomInt(-2,2), -6.9, -104.67 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 217.9 + MakeRandomInt(-2,2), -6.92, -108.45 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 222.31 + MakeRandomInt(-2,2), -6.89, -103.48 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 222.14 + MakeRandomInt(-2,2), -6.89, -100.54 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 220.74 + MakeRandomInt(-2,2), -6.85, -106.02 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 213.7 + MakeRandomInt(-2,2), -6.93, -112.79 + MakeRandomInt(-2,2), 2, 0, "ChoosePath")
end

