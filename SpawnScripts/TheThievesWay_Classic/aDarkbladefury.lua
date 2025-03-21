--[[
    Script Name    : SpawnScripts/TheThievesWay_Classic/aDarkbladefury.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.12.11 04:12:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    human(NPC, Spawn)
    class(NPC, Spawn)
    IdleAggressive(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC, Spawn)
	spawn(NPC, Spawn)
end

function class(NPC, Spawn)
    local class = MakeRandomInt(1,3)
    if class == 1 then
        SpawnSet(NPC, "class", 1 )
        SetSpellList(NPC, 291)
    elseif class == 2 then
        SpawnSet(NPC, "class", 11)
        SetSpellList(NPC, 297)
    elseif class == 3 then
        SpawnSet(NPC, "class", 31)
        SetSpellList(NPC, 294)
    end
end