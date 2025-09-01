--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.01 04:09:33
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
	MovementLoopAddLocation(NPC, 198.15, -6.32, -69.56, 2, MakeRandomInt(2,5))
	MovementLoopAddLocation(NPC, 198.04, -6.97, -61.89, 2, 0)
	MovementLoopAddLocation(NPC, 198.04, -6.97, -61.89, 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 196.86, -6.98, -65, 2, 0)
	MovementLoopAddLocation(NPC, 196.86, -6.98, -65, 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 198.41, -6.31, -69.32, 2, 0)
	MovementLoopAddLocation(NPC, 198.13, -6.97, -76.69, 2, 0, "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 198.14, -6.31, -69.67, 2, MakeRandomInt(2,5))
	MovementLoopAddLocation(NPC, 197.1, -6.97, -75.58, 2, 0)
	MovementLoopAddLocation(NPC, 198.37, -7.01, -81.71, 2, 0)
	MovementLoopAddLocation(NPC, 198.37, -7.01, -81.71, 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 199.07, -7.01, -76.1, 2, 0)
	MovementLoopAddLocation(NPC, 197.71, -6.33, -69.33, 2, 0)
	MovementLoopAddLocation(NPC, 196.64, -6.97, -62.47, 2, 0)
	MovementLoopAddLocation(NPC, 196.64, -6.97, -62.47, 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 198.58, -6.29, -69.35, 2, 0)
	MovementLoopAddLocation(NPC, 197.66, -6.99, -74.73, 2, 0)
	MovementLoopAddLocation(NPC, 197.66, -6.99, -74.73, 2, MakeRandomInt(5,10), "ChoosePath")
end