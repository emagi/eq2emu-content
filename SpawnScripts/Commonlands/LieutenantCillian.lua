--[[
    Script Name    : SpawnScripts/Commonlands/LieutenantCillian.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.06.18 04:06:48
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end