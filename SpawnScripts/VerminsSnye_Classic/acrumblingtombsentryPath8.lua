--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath8.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.16 07:09:45
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
	MovementLoopAddLocation(NPC, 27.59 + MakeRandomInt(-2,2), -0.15, -0.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 27.57, -0.01, 9.89, 2, 0)
	MovementLoopAddLocation(NPC, 28.71, 0.59, 12.84, 2, 0)
	MovementLoopAddLocation(NPC, 30.37 + MakeRandomInt(-2,2), -0.06, 15.77 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.98, 0.56, 13.25, 2, 0)
	MovementLoopAddLocation(NPC, 28.14 + MakeRandomInt(-2,2), -0.07, 9.61 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.85, 0.6, 12.69, 2, 0)
	MovementLoopAddLocation(NPC, 30.42 + MakeRandomInt(-2,2), -0.06, 15.76 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 29.01, 0.6, 12.88, 2, 0)
	MovementLoopAddLocation(NPC, 28.31, -0.04, 9.24, 2, 0)
	MovementLoopAddLocation(NPC, 28.32 + MakeRandomInt(-2,2), 0.05, -3.02 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 27.59 + MakeRandomInt(-2,2), -0.15, -0.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 27.78, 0.43, -19.14, 2, 0)
	MovementLoopAddLocation(NPC, 29.61 + MakeRandomInt(-2,2), -0.01, -24.09 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.11, 0.43, -18.89, 2, 0)
	MovementLoopAddLocation(NPC, 28.01 + MakeRandomInt(-2,2), -0.06, -12.37 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 27.91 + MakeRandomInt(-2,2), -0.12, -4.42 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.04 + MakeRandomInt(-2,2), -0.09, -13.31 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.33 + MakeRandomInt(-2,2), 0.03, 2.16 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 27.59 + MakeRandomInt(-2,2), -0.15, -0.34 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 27.75 + MakeRandomInt(-2,2), -0.08, -12.61 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.23 + MakeRandomInt(-2,2), 0.01, 1.58 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 28.07 + MakeRandomInt(-2,2), -0.07, 9.61 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 27.88 + MakeRandomInt(-2,2), -0.08, -5.5 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end