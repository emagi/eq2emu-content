--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath7.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.20 01:09:09
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
	MovementLoopAddLocation(NPC, 130.96 + MakeRandomInt(-2,2), -0.2, -136.26 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 129.23, -0.08, -132.82, 2, 0)
	MovementLoopAddLocation(NPC, 127.47 + MakeRandomInt(-2,2), -0.03, -129.93 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 129.87 + MakeRandomInt(-2,2), -0.08, -133.04 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 126.63, -0.08, -129.01, 2, 0)
	MovementLoopAddLocation(NPC, 122.03 + MakeRandomInt(-2,2), 0.57, -123.55 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 127.92, 0.01, -129.93, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 130.96 + MakeRandomInt(-2,2), -0.2, -136.26 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 131.9, 0, -140.58, 2, 0)
	MovementLoopAddLocation(NPC, 131.55 + MakeRandomInt(-2,2), 0.01, -145.77 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 131.24, -0.07, -147.98, 2, 0)
	MovementLoopAddLocation(NPC, 131.27 + MakeRandomInt(-2,2), 0.02, -146.03 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 132.17, -0.01, -140.87, 2, 0, "ChoosePath")
end

function Path3(NPC)
	MovementLoopAddLocation(NPC, 130.96 + MakeRandomInt(-2,2), -0.2, -136.26 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 129.42 + MakeRandomInt(-2,2), -0.08, -132.89 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 131.35, -0.16, -136.39, 2, 0)
	MovementLoopAddLocation(NPC, 131.92, 0.01, -139.79, 2, 0)
	MovementLoopAddLocation(NPC, 131.79 + MakeRandomInt(-2,2), -0.06, -145.15 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 132.15, 0, -140.77, 2, 0, "ChoosePath")
end