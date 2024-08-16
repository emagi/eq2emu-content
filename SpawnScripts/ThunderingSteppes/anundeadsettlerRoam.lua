--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anundeadsettlerRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.10 08:08:17
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Farmer(NPC)
    RandomMovement(NPC, Spawn, 12, -12, 2, 0, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Farmer(NPC, Spawn)
    farmer = MakeRandomInt(1,2)
        if farmer == 2 then
            SpawnSet(NPC, "name", "an undead farmer")
        else
        end
end