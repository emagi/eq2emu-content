--[[
    Script Name    : SpawnScripts/ThunderingSteppes/OutlandSentryOrvin.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.17 09:04:57
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