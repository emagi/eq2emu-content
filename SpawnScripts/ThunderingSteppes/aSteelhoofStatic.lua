--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSteelhoofStatic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.23 06:11:48
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