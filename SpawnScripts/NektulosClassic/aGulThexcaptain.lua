--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexcaptain.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:25
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ChooseClass(NPC)
    AddTimer(NPC, 6000, "movement")
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
        SpawnSet(NPC, "class", 9) -- Shadowknight
    elseif SetClass == 2 then 
        SpawnSet(NPC, "class", 27) -- Coercer
    end 
end 

function movement(NPC)
    if GetDifficulty(NPC) == 8 then
        RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
    else 
    
    end
end
