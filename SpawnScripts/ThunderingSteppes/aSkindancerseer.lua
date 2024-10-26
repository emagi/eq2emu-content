--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSkindancerseer.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.09 07:10:19
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