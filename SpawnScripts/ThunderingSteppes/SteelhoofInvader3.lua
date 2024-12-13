--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SteelhoofInvader3.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.04 04:08:51
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ChooseWagon(NPC)
    SpawnVariant = MakeRandomInt(1,3)
    
    if SpawnVariant == 1 then 
        GroupID = 1057729
    elseif SpawnVariant == 2 then
        GroupID = 1057730
    elseif SpawnVariant == 3 then 
        GroupID = 1057731
    end
    SpawnGroupByID(zone, GroupID, MakeRandomInt(23,25))
    AddTimer(NPC, 10000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133793410))
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