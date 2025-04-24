--[[
    Script Name    : SpawnScripts/NektulosClassic/aDragoonsentry.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:13
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
    SetClass = MakeRandomInt(1,3)
    if SetClass == 1 then
        SpawnSet(NPC, "class", 3) -- Guardian
    elseif SetClass == 2 then 
        SpawnSet(NPC, "class", 4) -- Berserker
    elseif SetClass == 3 then
        SpawnSet(NPC, "class", 9) -- Shadowknight
    end 
end 