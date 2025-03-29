--[[
    Script Name    : SpawnScripts/SerpentSewerClassic/aMurkwaterabettor.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.25 11:03:16
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ratonga(NPC)
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
        DervishChain(NPC)
        IdleAggressive(NPC)
        SpawnSet(NPC, "class", 1 )
        SetSpellList(NPC, 478)
    elseif SetClass == 2 then
        DervishLeather(NPC)
        IdleSneaky(NPC)
        SpawnSet(NPC, "class", 32 )
        SetSpellList(NPC, 469)
    end
end