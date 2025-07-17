--[[
    Script Name    : SpawnScripts/Blackburrow/MineController1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.16 03:07:05
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC) -- Loc ID for spawn object
    LevelMin = 13 -- Minium level for encounter to spawn at
    LevelMax = 14 -- Maximum level for encounter to spawn at
    Group1 = 1058244 -- Group ID
    Group2 = 1058245 -- Group ID
    Group3 = 1058246-- Group ID
    SpawnVariant = MakeRandomInt(1,3)
    
    if SpawnVariant == 1 then 
        GroupID = Group1
    elseif SpawnVariant == 2 then
        GroupID = Group2
    elseif SpawnVariant == 3 then
        GroupID = Group3
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

function respawn(NPC)
    spawn(NPC)
end