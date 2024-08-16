--[[
    Script Name    : SpawnScripts/ThunderingSteppes/GnollHeroicSpawner1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.11 02:08:20
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057800

    SpawnGroupByID(zone, GroupID, MakeRandomInt(21,23))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133793625))
    end
end

function respawn(NPC)
	spawn(NPC)
end