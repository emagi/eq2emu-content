--[[
    Script Name    : SpawnScripts/WailingCaves/aShinReespiritist.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.12 08:02:21
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