--[[
    Script Name    : SpawnScripts/SerpentSewerClassic/aMurkwatersteward.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.25 11:03:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ratonga(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end