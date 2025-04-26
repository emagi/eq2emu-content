--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriusmarauder.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 06:04:31
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
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
    SetClass = MakeRandomInt(1,2)
    if SetClass == 1 then
        SpawnSet(NPC, "class", 33) -- Swashbuckler
    elseif SetClass == 2 then 
        SpawnSet(NPC, "class", 40) -- Assassin
    end 
end 