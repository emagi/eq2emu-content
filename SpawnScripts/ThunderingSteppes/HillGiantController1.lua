--[[
    Script Name    : SpawnScripts/ThunderingSteppes/HillGiantController1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 08:09:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057970

    SpawnGroupByID(zone, GroupID, MakeRandomInt(25,27))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794659))
    end
end

function respawn(NPC)
	spawn(NPC)
end