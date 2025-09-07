--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/NookController5.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.02 08:09:27
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC) -- Loc ID for spawn object
    LevelMin = 13 -- Minium level for encounter to spawn at
    LevelMax = 15 -- Maximum level for encounter to spawn at
    Group1 = 1058413 -- Group ID
    Group2 = 1058414 -- Group ID
    Group3 = 1058415-- Group ID
    SpawnVariant = MakeRandomInt(1,100)
    
    if SpawnVariant <= 47 then 
        GroupID = Group1
    elseif SpawnVariant > 47 and SpawnVariant < 95 then
        GroupID = Group2
    elseif SpawnVariant >= 95 then
        GroupID = Group3
        LevelMin = 20 -- Minium level for encounter to spawn at
        LevelMax = 20 -- Maximum level for encounter to spawn at
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