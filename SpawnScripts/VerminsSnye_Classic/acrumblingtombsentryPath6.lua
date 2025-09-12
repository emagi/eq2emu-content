--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath6.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.11 06:09:54
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
	MovementLoopAddLocation(NPC, 59.7 + MakeRandomInt(-2,2), 0.13, -47.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 60.74, 0.02, -44.85, 2, 0)
	MovementLoopAddLocation(NPC, 60.51 + MakeRandomInt(-2,2), -0.17, -40.82 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 60.92 + MakeRandomInt(-2,2), -0.03, -43.78 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 59.87, 0.1, -46.48, 2, 0)
	MovementLoopAddLocation(NPC, 56.56 + MakeRandomInt(-2,2), 0, -48.85 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 59.7 + MakeRandomInt(-2,2), 0.13, -47.46 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 54.93 + MakeRandomInt(-2,2), -0.09, -49.05 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 57.25 + MakeRandomInt(-2,2), 0.03, -48.64 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 58.71, 0.1, -47.6, 2, 0)
	MovementLoopAddLocation(NPC, 60.94, -0.05, -43.45, 2, 0)
	MovementLoopAddLocation(NPC, 60.44 + MakeRandomInt(-2,2), -0.14, -41.31 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end