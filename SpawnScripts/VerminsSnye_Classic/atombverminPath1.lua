--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/atombverminPath1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.20 02:09:39
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
	MovementLoopAddLocation(NPC, -10.24 + MakeRandomInt(-2,2), 0.39, -179.47 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -9.52, -0.11, -175.41, 2, 0)
	MovementLoopAddLocation(NPC, -11.52, -0.22, -171.35, 2, 0)
	MovementLoopAddLocation(NPC, -15.7 + MakeRandomInt(-2,2), -0.13, -167.19 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -10.76 + MakeRandomInt(-2,2), -0.29, -171.52 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -15.8 + MakeRandomInt(-2,2), -0.18, -166.54 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -10.16, -0.21, -172.12, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, -10.24 + MakeRandomInt(-2,2), 0.39, -179.47 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -13.46, -0.2, -184.77, 2, 0)
	MovementLoopAddLocation(NPC, -15.29 + MakeRandomInt(-2,2), -0.05, -189.48 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -15.09, -0.08, -186.38, 2, 0)
	MovementLoopAddLocation(NPC, -11.68 + MakeRandomInt(-2,2), -0.17, -183.17 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -14.56, -0.15, -185.53, 2, 0)
	MovementLoopAddLocation(NPC, -15.11, -0.07, -191.14, 2, 0)
	MovementLoopAddLocation(NPC, -14.53, -0.01, -194.81, 2, 0)
	MovementLoopAddLocation(NPC, -11.57 + MakeRandomInt(-2,2), 0.01, -197.03 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -15.11, -0.04, -194, 2, 0)
	MovementLoopAddLocation(NPC, -15.89, 0.04, -188.55, 2, 0, "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, -10.24 + MakeRandomInt(-2,2), 0.39, -179.47 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -10.12 + MakeRandomInt(-2,2), -0.13, -171.09 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -9.69, 0.43, -179.21, 2, 0)
	MovementLoopAddLocation(NPC, -12.63 + MakeRandomInt(-2,2), -0.16, -183.72 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end