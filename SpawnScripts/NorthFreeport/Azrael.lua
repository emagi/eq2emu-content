--[[
    Script Name    : SpawnScripts/NorthFreeport/Azrael.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.21 02:02:37
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    RandomMovement(NPC, Spawn, 6, -6, 1, 8, 15)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
