--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/atombverminPath2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.20 04:09:44
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
	MovementLoopAddLocation(NPC, 0.03 + MakeRandomInt(-2,2), -0.57, -146.5 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 7.45 + MakeRandomInt(-2,2), -0.62, -146.14 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 2.66 + MakeRandomInt(-2,2), -0.57, -146.5 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -4.08 + MakeRandomInt(-2,2), -0.16, -146.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 0.03 + MakeRandomInt(-2,2), -0.57, -146.5 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -13.32 + MakeRandomInt(-2,2), -0.08, -146.67 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -4.87 + MakeRandomInt(-2,2), -0.11, -146.3 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -12.97 + MakeRandomInt(-2,2), -0.18, -146.27 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 0.03 + MakeRandomInt(-2,2), -0.57, -146.5 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 4.75 + MakeRandomInt(-2,2), -0.6, -146.42 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -4.72 + MakeRandomInt(-2,2), -0.11, -146.66 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end