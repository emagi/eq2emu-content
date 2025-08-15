--[[
    Script Name    : SpawnScripts/Blackburrow/SpiderContoller4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.14 07:08:28
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = xx -- Loc ID for spawn object
    LevelMin = 19 -- Minium level for encounter to spawn at
    LevelMax = 20 -- Maximum level for encounter to spawn at
    Group1 = 1058357 -- Group ID
    Group2 = 1058358 -- Group ID

    SpawnVariant = MakeRandomInt(1,5)
    
    if SpawnVariant == 5 then 
        GroupID = Group2
        SpawnGroupByID(zone, GroupID, 20)
    else
        GroupID = Group1
        SpawnGroupByID(zone, GroupID, MakeRandomInt(LevelMin,LevelMax))
    end
    
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, ControlObject))
    end
end

function respawn(NPC)
    spawn(NPC)
end