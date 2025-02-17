--[[
    Script Name    : SpawnScripts/WailingCaves/asentryofRee.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.12 06:02:44
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Ree(NPC)
    OrcArmorCommon(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end