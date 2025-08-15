--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfanghatchling.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.27 08:07:47
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 3, -3, 2, 5, 8)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end