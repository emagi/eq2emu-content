--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath12.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.19 07:09:18
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
	MovementLoopAddLocation(NPC, 59.03 + MakeRandomInt(-2,2), 0.5, -83.38 + MakeRandomInt(-2,2), 2, 0, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 53.98, 0.03, -87.19, 2, 0)
	MovementLoopAddLocation(NPC, 50.03 + MakeRandomInt(-2,2), -0.09, -91.01 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 53.58 + MakeRandomInt(-2,2), -0.01, -86.91 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 49.77 + MakeRandomInt(-2,2), -0.1, -91.15 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 53.85, 0.01, -86.79, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 59.03 + MakeRandomInt(-2,2), 0.5, -83.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 63.45, -0.13, -81.93, 2, 0)
	MovementLoopAddLocation(NPC, 71.28 + MakeRandomInt(-2,2), -0.13, -81.86 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 68.89 + MakeRandomInt(-2,2), -0.1, -82.28 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 62.96 + MakeRandomInt(-2,2), -0.1, -82.49 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 70.7 + MakeRandomInt(-2,2), -0.1, -81.76 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 63.7, -0.14, -82.04, 2, 0, "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 59.03 + MakeRandomInt(-2,2), 0.5, -83.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 54.53 + MakeRandomInt(-2,2), 0.03, -86.39 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 58.08, 0.53, -83.7, 2, 0)
	MovementLoopAddLocation(NPC, 62.92 + MakeRandomInt(-2,2), -0.1, -82.02 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end