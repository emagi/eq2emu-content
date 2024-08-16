--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Windfeather.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.16 04:08:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end