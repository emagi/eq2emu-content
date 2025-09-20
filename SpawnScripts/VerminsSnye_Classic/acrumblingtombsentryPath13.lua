--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath13.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.19 08:09:11
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
	MovementLoopAddLocation(NPC, 91.91 + MakeRandomInt(-2,2), -0.09, -80.44 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 86.58, 0.07, -82.49, 2, 0)
	MovementLoopAddLocation(NPC, 82.25 + MakeRandomInt(-2,2), -0.06, -82.47 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 87.88 + MakeRandomInt(-2,2), -0.05, -81.97 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 82.05 + MakeRandomInt(-2,2), -0.1, -82.51 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 87.07, -0.19, -82.41, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 91.91 + MakeRandomInt(-2,2), -0.09, -80.44 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.53, -0.11, -76.64, 2, 0)
	MovementLoopAddLocation(NPC, 95.26 + MakeRandomInt(-2,2), -0.09, -67.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.84 + MakeRandomInt(-2,2), -0.1, -74.63 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.33 + MakeRandomInt(-2,2), -0.1, -67.94 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 95.55, -0.02, -71.92, 2, 0)
	MovementLoopAddLocation(NPC, 95.87, -0.07, -75.84, 2, 0, "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 91.91 + MakeRandomInt(-2,2), -0.09, -80.44 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 94.48, -0.04, -77.54, 2, 0)
	MovementLoopAddLocation(NPC, 96.08 + MakeRandomInt(-2,2), -0.02, -74.1 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 93.25, -0.03, -78.99, 2, 0)
	MovementLoopAddLocation(NPC, 88.62, 0.03, -82.23, 2, 0)
	MovementLoopAddLocation(NPC, 84.37 + MakeRandomInt(-2,2), 0.02, -82.28 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end