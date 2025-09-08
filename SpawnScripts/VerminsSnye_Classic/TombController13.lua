--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/TombController13.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.07 04:09:19
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC)
    Group1 = 1058466
    Group2 = 1058467
    LevelMin = 13
    LevelMax = 15
    GroupChance = MakeRandomInt(1,10)
    
    if GroupChance <= 9 then
        GroupID = Group1
    elseif GroupChance == 10 then
        GroupID = Group2
        LevelMin = 16
        LevelMax = 16
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