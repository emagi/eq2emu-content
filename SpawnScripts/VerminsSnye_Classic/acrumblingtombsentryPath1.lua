--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.07 07:09:36
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
	MovementLoopAddLocation(NPC, 255.11 + MakeRandomInt(-2,2), -7.04, -187.68 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 257.57, -6.98, -191.65, 2, 0)
	MovementLoopAddLocation(NPC, 257.45 + MakeRandomInt(-2,2), -7.05, -194.29 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 256.69 + MakeRandomInt(-2,2), -6.99, -190.9 + MakeRandomInt(-2,2), 2,  MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 253.8 + MakeRandomInt(-2,2), -7.01, -186.35 + MakeRandomInt(-2,2), 2,  MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 255.11 + MakeRandomInt(-2,2), -7.04, -187.68 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 252.94, -7, -185.57, 2, 0)
	MovementLoopAddLocation(NPC, 250.39 + MakeRandomInt(-2,2), -7.02, -181.45 + MakeRandomInt(-2,2), 2,  MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 253.48, -6.97, -185.5, 2, 0)
	MovementLoopAddLocation(NPC, 256.89 + MakeRandomInt(-2,2), -7.01, -190.47 + MakeRandomInt(-2,2), 2,  MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 256.18 + MakeRandomInt(-2,2), -7.06, -188.91 + MakeRandomInt(-2,2), 2,  MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 257.58 + MakeRandomInt(-2,2), -7.03, -193.57 + MakeRandomInt(-2,2), 2,  MakeRandomInt(8,15), "ChoosePath")
end