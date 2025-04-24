--[[
    Script Name    : SpawnScripts/NektulosClassic/aDragooncaptain.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 06:04:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ChooseClass(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseClass(NPC)
    SetRace = MakeRandomInt(1,2)
    if SetRace == 1 then
        SpawnSet(NPC, "class", 3) -- Guardian
    elseif SetRace == 2 then 
        SpawnSet(NPC, "class", 14) -- Inquisitor
    end
    
end 