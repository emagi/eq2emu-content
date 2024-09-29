--[[
    Script Name    : SpawnScripts/ThunderingSteppes/GnollHeroicSpawner9.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.16 08:09:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057961

    SpawnGroupByID(zone, GroupID, MakeRandomInt(21,23))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794592))
    end
end

function respawn(NPC)
	spawn(NPC)
end