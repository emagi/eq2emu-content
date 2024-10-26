--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ReefSharkController1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.10 08:09:33
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    local zone = GetZone(NPC)
    BossShark = 1057928
    BabyShark1 = 1057925
    BabyShark2 = 1057926
    BabyShark3 = 1057927
    GetBabyShark(NPC)
    SpawnGroupByID(zone, BabyShark, MakeRandomInt(24,25))
    AddTimer(NPC, 6000, "BossCheck")
    --AddTimer(NPC, 6000, "waypoints")
end

function GetBabyShark(NPC)
    local GetShark = MakeRandomInt(1,3)
    if GetShark == 1 then
        BabyShark = BabyShark1
    elseif GetShark == 2 then
        BabyShark = BabyShark2
    else 
        BabyShark = BabyShark3
    end
end

function BossCheck(NPC)
    local zone = GetZone(NPC)
    
    if IsSpawnGroupAlive(zone, BabyShark) == true then
        AddTimer(NPC, 6000, "BossCheck")
    else
        Boss(NPC)
    end
end

function Boss(NPC)
    local zone = GetZone(NPC)
    SpawnBoss= MakeRandomInt(1,100)
    
    if SpawnBoss <= 15 then
        SpawnGroupByID(zone, BossShark, MakeRandomInt(25,26))
        AddTimer(NPC, 6000, "EndCheck")
    else
        CloseEvent(NPC)
    end
end

function EndCheck(NPC)
    local zone = GetZone(NPC)
    
    if IsSpawnGroupAlive(zone, BossShark) == true then
        AddTimer(NPC, 6000, "EndCheck")
    else
        CloseEvent(NPC)
    end
end

function CloseEvent(NPC)
    local zone = GetZone(NPC)
    
    Despawn(GetSpawnByLocationID(zone, 133794493))
end

function respawn(NPC)
	spawn(NPC)
end


