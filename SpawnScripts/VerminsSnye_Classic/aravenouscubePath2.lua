--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/aravenouscubePath2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.05 05:09:57
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(4000, 8000), "ChoosePath")
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
	MovementLoopAddLocation(NPC, 197.58 + MakeRandomInt(-2,2), -6.96, -55.17 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 192.2, -6.76, -55.4, 2, 0)
	MovementLoopAddLocation(NPC, 187.96 + MakeRandomInt(-2,2), -6.95, -54.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 193.24, -6.98, -55.21, 2, 0)
	MovementLoopAddLocation(NPC, 201.26 + MakeRandomInt(-2,2), -7, -55.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 195.4 + MakeRandomInt(-2,2), -7.04, -55.53 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10), "ChoosePath")

end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 197.58, -6.96, -55.17, 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 204.67, -6.98, -55.09, 2, 0)
	MovementLoopAddLocation(NPC, 211.71, -6.39, -55.2, 2, 0)
	MovementLoopAddLocation(NPC, 216.45 + MakeRandomInt(-2,2), -6.98, -53.48 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 212, -6.4, -55.36, 2, 0)
	MovementLoopAddLocation(NPC, 208.04 + MakeRandomInt(-2,2), -7.01, -55.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 201.01, -7, -55.28, 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 208.31 + MakeRandomInt(-2,2), -6.98, -54.89 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10), "ChoosePath")
end

