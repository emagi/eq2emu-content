--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aRallosianlieutenant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.24 04:10:21
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