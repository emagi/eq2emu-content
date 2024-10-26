--[[
    Script Name    : SpawnScripts/ThunderingSteppes/AntelopeHerd4.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.21 08:08:05
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    GroupID = 1057891
    
    SpawnGroupByID(zone, GroupID, MakeRandomInt(22,24))
    --RandomMovement(NPC, Spawn, 30, -30, 3, 30, 30)
    AddTimer(NPC, 10000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794234))
    end
end

function respawn(NPC)
	spawn(NPC)
end