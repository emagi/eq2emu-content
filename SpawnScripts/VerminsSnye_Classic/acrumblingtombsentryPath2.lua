--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.07 08:09:58
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
	MovementLoopAddLocation(NPC, 240.19 + MakeRandomInt(-2,2), -7.07, -204.42 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 230.62 + MakeRandomInt(-2,2), -7.01, -204.33 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 236.76 + MakeRandomInt(-2,2), -7.69, -204.14 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 228.88, -7.06, -204.28, 2, 0)
	MovementLoopAddLocation(NPC, 223.96 + MakeRandomInt(-2,2), -7.01, -201.62 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 231.11 + MakeRandomInt(-2,2), -7, -203.96 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 240.19 + MakeRandomInt(-2,2), -7.07, -204.42 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 247.94 + MakeRandomInt(-2,2), -6.9, -204.38 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 244.28 + MakeRandomInt(-2,2), -7.62, -204.03 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 248.8 + MakeRandomInt(-2,2), -6.92, -204.06 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end