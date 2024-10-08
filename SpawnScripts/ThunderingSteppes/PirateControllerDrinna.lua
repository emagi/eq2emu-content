--[[
    Script Name    : SpawnScripts/ThunderingSteppes/PirateControllerDrinna.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.01 09:10:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057984

    SpawnGroupByID(zone, GroupID, MakeRandomInt(25,26))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794773))
    end
end

function respawn(NPC)
	spawn(NPC)
end