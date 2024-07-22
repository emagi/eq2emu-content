--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ayoungantelope.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.15 05:04:37
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