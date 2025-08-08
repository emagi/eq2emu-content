--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothSleeping.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.07 05:08:37
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 228)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC, "visual_state", 0)
end

function respawn(NPC)
	spawn(NPC)
end

