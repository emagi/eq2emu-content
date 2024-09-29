--[[
    Script Name    : SpawnScripts/ThunderingSteppes/FishSchoolController4.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.09 02:09:07
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    FishGroup = 1057918
    BossFish = 1057919
    SpawnGroupByID(zone, FishGroup, MakeRandomInt(21,23))
    RandomMovement(NPC, Spawn, 50, -50, 6, 8, 15)
    AddTimer(NPC, 6000, "BossCheck")
end

function BossCheck(NPC)
    local zone = GetZone(NPC)
    
    if IsSpawnGroupAlive(zone, FishGroup) == true then
        AddTimer(NPC, 6000, "BossCheck")
    else
        Boss(NPC)
    end
end

function Boss(NPC)
    local zone = GetZone(NPC)
    SpawnBoss= MakeRandomInt(1,100)
    
    if SpawnBoss <= 33 then
        SpawnGroupByID(zone, BossFish, MakeRandomInt(25,26))
        AddTimer(NPC, 6000, "EndCheck")
    else
        CloseEvent(NPC)
    end
end

function EndCheck(NPC)
    local zone = GetZone(NPC)
    
    if IsSpawnGroupAlive(zone, BossFish) == true then
        AddTimer(NPC, 6000, "EndCheck")
    else
        CloseEvent(NPC)
    end
end

function CloseEvent(NPC)
    local zone = GetZone(NPC)
    
    Despawn(GetSpawnByLocationID(zone, 133794435))
end

function respawn(NPC)
	spawn(NPC)
end