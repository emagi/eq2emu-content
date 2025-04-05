--[[
    Script Name    : SpawnScripts/Zek/aDeathfisttimbersmith.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.03 04:04:45
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Deathfist(NPC)
    OrcArmorCommon(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end