--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.26 03:03:01
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
	MovementLoopAddLocation(NPC, 157.49 + MakeRandomInt(-2,2), -6.34, -107.89 + MakeRandomInt(-2,2), 2, MakeRandomInt(2,5))
	MovementLoopAddLocation(NPC, 153.56 + MakeRandomInt(-2,2), -7.06, -105.47 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 149.71 + MakeRandomInt(-2,2), -7, -101.19 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 145.41 + MakeRandomInt(-2,2), -7.01, -98.53 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 143.37 + MakeRandomInt(-2,2), -7.01, -97.92 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 147.49 + MakeRandomInt(-2,2), -7.1, -98.99 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 151.22 + MakeRandomInt(-2,2), -7.03, -102.84 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 157.49 + MakeRandomInt(-2,2), -6.34, -107.89 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 157.49 + MakeRandomInt(-2,2), -6.34, -107.89 + MakeRandomInt(-2,2), 2, MakeRandomInt(2,5))
	MovementLoopAddLocation(NPC, 162.31 + MakeRandomInt(-2,2), -7, -108.46 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 169.1 + MakeRandomInt(-2,2), -7.72, -108.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 178.72 + MakeRandomInt(-2,2), -7.07, -108.13 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 165.57 + MakeRandomInt(-2,2), -7.52, -108.53 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 161.87 + MakeRandomInt(-2,2), -7.01, -108.82 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 157.49 + MakeRandomInt(-2,2), -6.34, -107.89 + MakeRandomInt(-2,2), 2, 0, "ChoosePath")
end

