--[[
    Script Name    : SpawnScripts/Commonlands/portaltoobelisk.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.06.18 03:06:29
    Script Purpose : 
                   : 
--]]

--require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    --NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end