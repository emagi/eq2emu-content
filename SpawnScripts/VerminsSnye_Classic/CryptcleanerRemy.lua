--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/CryptcleanerRemy.lua
    Script Author  : Neifion
    Script Date    : 2024.04.24 10:04:19
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