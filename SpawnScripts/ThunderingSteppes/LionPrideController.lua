--[[
    Script Name    : SpawnScripts/ThunderingSteppes/LionPrideController.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.23 08:08:06
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057893

    SpawnGroupByID(zone, GroupID, MakeRandomInt(24,25))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794275))
    end
end

function respawn(NPC)
	spawn(NPC)
end