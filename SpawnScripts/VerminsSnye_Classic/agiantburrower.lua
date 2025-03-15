--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agiantburrower.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.14 07:03:49
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