--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.08 08:09:52
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
    SetPath = MakeRandomInt(1,2)
    if SetPath == 1 then 
        Path1(NPC)
    elseif SetPath == 2 then 
        Path2(NPC)
    end
end

function Path1(NPC)
	MovementLoopAddLocation(NPC, 95.63 + MakeRandomInt(-2,2), -0.73, -45.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 95.27 + MakeRandomInt(-2,2), -0.6, -41.39 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.25 + MakeRandomInt(-2,2), -0.66, -44.78 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.74 + MakeRandomInt(-2,2), -0.56, -52.44 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 95.63 + MakeRandomInt(-2,2), -0.73, -45.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 95.77 + MakeRandomInt(-2,2), -0.84, -48.67 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.97 + MakeRandomInt(-2,2), -0.49, -52.86 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.74 + MakeRandomInt(-2,2), -0.81, -47.74 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.54 + MakeRandomInt(-2,2), -0.62, -41.12 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end