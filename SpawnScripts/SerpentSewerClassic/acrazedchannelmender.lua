--[[
    Script Name    : SpawnScripts/SerpentSewerClassic/acrazedchannelmender.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.25 11:03:07
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    gnome(NPC)
    IdleTinker(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end