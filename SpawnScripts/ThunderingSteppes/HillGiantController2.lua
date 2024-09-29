--[[
    Script Name    : SpawnScripts/ThunderingSteppes/HillGiantController2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 06:09:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057971

    SpawnGroupByID(zone, GroupID, MakeRandomInt(25,27))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794687))
    end
end

function respawn(NPC)
	spawn(NPC)
end