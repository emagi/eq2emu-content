--[[
    Script Name    : SpawnScripts/Antonica/acoldwindpikeStream.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.08 05:08:33
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
    ChooseClass(NPC)
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function ChooseClass(NPC)
    SetClass = MakeRandomInt(1,2) 
    if SetClass == 1 then
        SpawnSet(NPC, "class", 1)
        SetSpellList(NPC, 291)
    elseif SetClass == 2 then
        SpawnSet(NPC, "class", 31)
        SetSpellList(NPC, 295)
    end
end