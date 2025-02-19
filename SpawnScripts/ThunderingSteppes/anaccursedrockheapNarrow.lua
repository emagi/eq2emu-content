--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anaccursedrockheapNarrow.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.31 07:10:51
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 6, -6, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end