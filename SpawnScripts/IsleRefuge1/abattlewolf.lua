--[[
    Script Name    : SpawnScripts/IsleRefuge1/abattlewolf.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 05:09:32
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