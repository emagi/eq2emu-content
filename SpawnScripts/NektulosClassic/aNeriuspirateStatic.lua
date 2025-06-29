--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriuspirateStatic.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.01 04:05:02
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    IdleBored(NPC)
    human(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end