--[[
    Script Name    : SpawnScripts/ThunderingSteppes/awealdwolfPack1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.21 08:08:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "movement")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC, Spawn)
	spawn(NPC, Spawn)
end

function movement(NPC, Spawn)
    local zone = GetZone(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 20 , y, z - 8 , 2, 25)
	MovementLoopAddLocation(NPC, x - 5 , y, z - 10, 2, 25)
	MovementLoopAddLocation(NPC, x - 20, y, z + 10 , 2, 25)
	MovementLoopAddLocation(NPC, x + 20 , y, z + -20 , 2, 25)
	MovementLoopAddLocation(NPC, x - 15 , y, z + 15 , 2, 25)
	MovementLoopAddLocation(NPC, x , y, z , 2, 25)
end
