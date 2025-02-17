--[[
    Script Name    : SpawnScripts/WailingCaves/aluridshadowlurker.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.12 04:02:52
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