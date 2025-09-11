--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryPath3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.08 08:09:47
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
	MovementLoopAddLocation(NPC, 209.41 + MakeRandomInt(-2,2), -7.06, -184.83 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 210.61, -7, -187.73, 2, 0)
	MovementLoopAddLocation(NPC, 213.19 + MakeRandomInt(-2,2), -7.06, -191.31 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 210.25 + MakeRandomInt(-2,2), -6.99, -188.41 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 209.53 + MakeRandomInt(-2,2), -7, -182.89 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 210.13, -7.02, -187.26, 2, 0)
	MovementLoopAddLocation(NPC, 211.76 + MakeRandomInt(-2,2), -7.01, -189.65 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 209.99, -7.03, -187.14, 2, 0)
	MovementLoopAddLocation(NPC, 209.27 + MakeRandomInt(-2,2), -6.98, -179.2 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 209.41 + MakeRandomInt(-2,2), -7.06, -184.83 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 209.23 + MakeRandomInt(-2,2), -7.03, -176.11 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 209.14, -6.98, -181.4, 2, 0)
	MovementLoopAddLocation(NPC, 210.46 + MakeRandomInt(-2,2), -7.06, -186.42 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 209.55, -7, -180.7, 2, 0)
	MovementLoopAddLocation(NPC, 210.18, -7.04, -174.33, 2, 0)
	MovementLoopAddLocation(NPC, 208.67, -7.03, -170.54, 2, 0)
	MovementLoopAddLocation(NPC, 206.59 + MakeRandomInt(-2,2), -7.01, -168.99 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 209.25, -6.99, -170.73, 2, 0)
	MovementLoopAddLocation(NPC, 209.78, -7, -173.78, 2, 0)
	MovementLoopAddLocation(NPC, 209.4 + MakeRandomInt(-2,2), -6.91, -179.42 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 209.91, -7.03, -183.66, 2, 0)
	MovementLoopAddLocation(NPC, 211.13 + MakeRandomInt(-2,2), -7, -188.14 + MakeRandomInt(-2,2), 2, MakeRandomInt(8,15), "ChoosePath")
end