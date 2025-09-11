--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/aravenouscubePath3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.10 07:09:51
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
	MovementLoopAddLocation(NPC, 124.46 + MakeRandomInt(-2,2), -2.48, -61.78 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 131.05, -4.35, -54.59, 2, 0)
	MovementLoopAddLocation(NPC, 134.89 + MakeRandomInt(-2,2), -5.26, -50.93 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 131.59, -4.34, -54.76, 2, 0)
	MovementLoopAddLocation(NPC, 127.74 + MakeRandomInt(-2,2), -3.5, -59.14 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 134.75 + MakeRandomInt(-2,2), -5.12, -51.59 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 130.81, -4.55, -55.63, 2, 0)
	MovementLoopAddLocation(NPC, 125.48, -2.85, -60.76, 2, 0)
	MovementLoopAddLocation(NPC, 121.05 + MakeRandomInt(-2,2), -2.52, -63.01 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 124.46 + MakeRandomInt(-2,2), -2.48, -61.78 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 121.71, -2.51, -63.03, 2, 0)
	MovementLoopAddLocation(NPC, 116.02, -2.13, -63.46, 2, 0)
	MovementLoopAddLocation(NPC, 108.89 + MakeRandomInt(-2,2), -0.86, -63.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 114.35, -2.17, -63.08, 2, 0)
	MovementLoopAddLocation(NPC, 120.79 + MakeRandomInt(-2,2), -2.52, -62.54 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 110.39 + MakeRandomInt(-2,2), -1.27, -63.12 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 119.59, -2.52, -63.01, 2, 0)
	MovementLoopAddLocation(NPC, 124.97, -2.76, -60.73, 2, 0)
	MovementLoopAddLocation(NPC, 127.9 + MakeRandomInt(-2,2), -3.76, -57.98 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

