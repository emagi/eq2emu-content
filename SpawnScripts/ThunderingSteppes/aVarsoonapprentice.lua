--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aVarsoonapprentice.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.15 05:04:32
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