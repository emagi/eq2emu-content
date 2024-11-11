--[[
    Script Name    : SpawnScripts/ThunderingSteppes/adrownedcaptainValley.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.03 07:11:01
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end