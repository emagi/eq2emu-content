--[[
    Script Name    : SpawnScripts/ThunderingSteppes/awealdwolfpup.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.15 05:04:41
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