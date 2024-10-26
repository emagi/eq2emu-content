--[[
    Script Name    : SpawnScripts/ThunderingSteppes/PirateController.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.01 09:10:26
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    SpawnVariant = MakeRandomInt(1,2)
    
    if SpawnVariant == 1 then 
        GroupID = 1057982
    elseif SpawnVariant == 2 then
        GroupID = 1057983
    end
    
    SpawnGroupByID(zone, GroupID, MakeRandomInt(25,26))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794769))
    end
end

function respawn(NPC)
	spawn(NPC)
end