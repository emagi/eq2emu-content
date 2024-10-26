--[[
    Script Name    : SpawnScripts/ThunderingSteppes/GnollHeroicSpawner5.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.14 04:09:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    Group1 = 1057945
    Group2 = 1057946
    Group3 = 1057947
    Group4 = 1057948
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
        Despawn(GetSpawnByLocationID(zone, 133794547))
    end
end

function respawn(NPC)
	spawn(NPC)
end