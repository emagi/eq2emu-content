--[[
    Script Name    : SpawnScripts/Antonica/aNecrosisauger.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.22 08:07:41
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