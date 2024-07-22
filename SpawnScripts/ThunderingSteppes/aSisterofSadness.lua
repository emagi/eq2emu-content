--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSisterofSadness.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.15 04:04:23
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end