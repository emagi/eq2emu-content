--[[
    Script Name    : SpawnScripts/SummonerPets/HeroicEncounterController.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.26 03:04:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = xx -- Loc ID for spawn object
    LevelMin = xx -- Minium level for encounter to spawn at
    LevelMax = xx -- Maximum level for encounter to spawn at
    Group1 = xx -- Group ID
    Group2 = xx -- Group ID
    Group3 = xx -- Group ID
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