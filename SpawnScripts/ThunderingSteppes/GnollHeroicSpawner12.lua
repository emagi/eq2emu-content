--[[
    Script Name    : SpawnScripts/ThunderingSteppes/GnollHeroicSpawner12.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.17 09:09:04
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    Group1 = 1057966
    Group2 = 1057967
    Group3 = 1057968
    Group4 = 1057969
    GroupPick(NPC)
    SpawnGroupByID(zone, GroupID, MakeRandomInt(21,23))
    AddTimer(NPC, 6000, "SpawnCheck")
end

function GroupPick(NPC)
    RandomGroup = MakeRandomInt(1,4)
    if RandomGroup == 1 then 
        GroupID = Group1
    elseif RandomGroup == 2 then
        GroupID = Group2
    elseif RandomGroup == 3 then
        GroupID = Group3
    else
        GroupID = Group4
    end
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, GroupID) == true then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794624))
    end
end

function respawn(NPC)
	spawn(NPC)
end