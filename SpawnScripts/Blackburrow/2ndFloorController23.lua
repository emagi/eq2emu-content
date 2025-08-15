--[[
    Script Name    : SpawnScripts/Blackburrow/2ndFloorController23.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.14 06:08:32
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC) -- Loc ID for spawn object
    LevelMin = 14 -- Minium level for encounter to spawn at
    LevelMax = 15 -- Maximum level for encounter to spawn at
    Group1 = 1058348 -- Group ID
    Group2 = 1058349 -- Group ID
    SpawnVariant = MakeRandomInt(1,2)
    
    if SpawnVariant == 1 then 
        GroupID = Group1
    elseif SpawnVariant == 2 then
        GroupID = Group2
    end
    
    SpawnGroupByID(zone, GroupID, MakeRandomInt(LevelMin,LevelMax))
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