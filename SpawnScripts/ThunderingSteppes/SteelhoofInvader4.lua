--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SteelhoofInvader4.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.12.07 10:12:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ChooseWagon(NPC)
    SpawnVariant = MakeRandomInt(1,3)
    
    if SpawnVariant == 1 then 
        GroupID = 1058052
    elseif SpawnVariant == 2 then
        GroupID = 1058053
    elseif SpawnVariant == 3 then
        GroupID = 1058054
    end
    
    SpawnGroupByID(zone, GroupID, MakeRandomInt(23,25))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133795554))
    end
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseWagon(NPC)
    wagon = MakeRandomInt(1,3)
    if wagon == 1 then
        SpawnSet(NPC,"model_type",2209)
    elseif wagon == 2 then 
        SpawnSet(NPC,"model_type",2242)
    elseif wagon == 3 then
        SpawnSet(NPC,"model_type",2243)
    end
    
end

