--[[
    Script Name    : SpawnScripts/Peatbog_Classic/amudhopperStatic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.14 07:07:30
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