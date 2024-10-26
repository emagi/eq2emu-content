--[[
    Script Name    : SpawnScripts/ThunderingSteppes/AntelopeHerdController.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.04 04:08:30
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    --RandomMovement(NPC, Spawn, 30, -30, 5, 8, 15)
end

function respawn(NPC, Spawn)
    spawn(NPC, Spawn)
end
