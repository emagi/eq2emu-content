--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SteelhoofInvader1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.01 07:08:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    SpawnVariant = MakeRandomInt(1,3)
    
    if SpawnVariant == 1 then 
        GroupID = 1057722
    elseif SpawnVariant == 2 then
        GroupID = 1057724
    elseif SpawnVariant == 3 then
        GroupID = 1057728
    end
    
    SpawnGroupByID(zone, GroupID, MakeRandomInt(23,25))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133793383))
    end
end

function respawn(NPC)
	spawn(NPC)
end