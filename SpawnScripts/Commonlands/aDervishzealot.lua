--[[
    Script Name    : SpawnScripts/Commonlands/aDervishzealot.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.01.04 07:01:38
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