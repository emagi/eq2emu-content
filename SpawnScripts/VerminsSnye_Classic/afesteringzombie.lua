--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/afesteringzombie.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.24 08:04:04
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
        SpawnSet(NPC, "class", 2) -- Warrior
        SetSpellList(NPC, 477)
    elseif SetClass == 2 then
        SpawnSet(NPC, "class", 12) -- Cleric
        SetSpellList(NPC, 329)
    elseif SetClass == 3 then
        SpawnSet(NPC, "class", 38) -- Predator
        SetSpellList(NPC, 332)
    end
end