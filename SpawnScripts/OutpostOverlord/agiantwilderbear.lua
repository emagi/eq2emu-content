--[[
    Script Name    : SpawnScripts/OutpostOverlord/agiantwilderbear.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.27 01:08:20
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end