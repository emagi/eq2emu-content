--[[
    Script Name    : SpawnScripts/ThunderingSteppes/CemetaryController1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.07 08:09:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057907

    SpawnGroupByID(zone, GroupID, MakeRandomInt(21,23))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794370))
    end
end

function respawn(NPC)
	spawn(NPC)
end