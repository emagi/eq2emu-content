--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/aBloodsaberadept.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.14 09:03:01
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ChooseRace(NPC)
    --RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseRace(NPC)
    SetRace = MakeRandomInt(1,3)
    
    if SetRace == 1 then
        human(NPC)
    elseif SetRace == 2 then
        ratonga(NPC)
    elseif SetRace == 3 then
        darkelf(NPC)
    end 
end