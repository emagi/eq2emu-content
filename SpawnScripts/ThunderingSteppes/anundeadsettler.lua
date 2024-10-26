--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anundeadsettler.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.16 11:07:42
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Farmer(NPC)
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