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
	MovementLoopAddLocation(NPC, 189.41 + MakeRandomInt(-2,2), -7.06, -163.67 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 193.51, -6.45, -163.3, 2, 0)
	MovementLoopAddLocation(NPC, 199.45, -6.97, -163.96, 2, 0)
	MovementLoopAddLocation(NPC, 203.12 + MakeRandomInt(-2,2), -7.05, -165.61 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 199.84 + MakeRandomInt(-2,2), -7, -164.35 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 194.41, -6.57, -163.82, 2, 0)
	MovementLoopAddLocation(NPC, 183.93 + MakeRandomInt(-2,2), -7.05, -163.79 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 194.01, -6.48, -163.17, 2, 0)
	MovementLoopAddLocation(NPC, 199.73 + MakeRandomInt(-2,2), -6.99, -163.72 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 189.41 + MakeRandomInt(-2,2), -7.06, -163.67 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 183.33, -7.07, -163.46, 2, 0)
	MovementLoopAddLocation(NPC, 178.57 + MakeRandomInt(-2,2), -7, -164.75 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 181.23, -7.03, -163.9, 2, 0)
	MovementLoopAddLocation(NPC, 184.23 + MakeRandomInt(-2,2), -7.03, -163.62 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 179.8, -6.99, -163.97, 2, 0)
	MovementLoopAddLocation(NPC, 173.98, -6.99, -167.12, 2, 0)
	MovementLoopAddLocation(NPC, 171.95 + MakeRandomInt(-2,2), -6.83, -169.86 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 177.44 + MakeRandomInt(-2,2), -7.03, -164.7 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 184.32, -7.03, -163.56, 2, 0)
	MovementLoopAddLocation(NPC, 193, -6.46, -163.07, 2, 0)
	MovementLoopAddLocation(NPC, 199.43 + MakeRandomInt(-2,2), -6.97, -163.56 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 194.2, -6.54, -163.52, 2, 0)
	MovementLoopAddLocation(NPC, 178.81 + MakeRandomInt(-2,2), -6.99, -164.41 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end