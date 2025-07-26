--[[
    Script Name    : SpawnScripts/BloodSkullValleyMaulicsStronghold/GeneralDrull.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.01.23 10:01:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

wave1 = {380962,380963,380961,380956,380957} -- location IDs first wave of heralds and heretics
wave2 = {380954,380958,380960,380959,380955} -- location IDs second wave of heralds and heretics
wave3 = {380883,380864,380865,380867,380887,380888} -- location IDs first wave of soldiers and fanatics
wave4 = {380873,380882,380897,380892,380874,380879,380899,380901,380878} -- location IDs second wave of soliders and fanatics

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(55 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(95 + dmgMod))
    Bloodskull(NPC)
    OrcChainCommon(NPC)
    SetTempVariable(NPC,"waveevent","nil")
end

function StartWaveEvent(NPC, player)
    Shout(NPC, "Invaders at the gate! To arms! Crush them!",player,10000)
    SetTempVariable(NPC,"waveevent",1)
    Wave1Start(NPC, Spawn)
end

function Wave1Start(NPC, Spawn)
local zone = GetZone(NPC)
local players = GetPlayersInZone(zone)
local closestSpawn = nil
local closestDistance = math.huge
    for k,v in ipairs(players) do
        local distance = GetDistance(NPC, v)
        if distance < closestDistance then
            closestSpawn = v
            closestDistance = distance
        end
    end
    for k,v in ipairs(wave1) do
    local orc = GetSpawnByLocationID(zone, v)
    Attack(orc, closestSpawn)
    end
AddTimer(NPC,10000,"Wave2Start",1) -- testing value
-- AddTimer(NPC,120000,"Wave2Start",1) -- production value
end

function Wave2Start(NPC, Spawn)
local zone = GetZone(NPC)
local players = GetPlayersInZone(zone)
local closestSpawn = nil
local closestDistance = math.huge
    for k,v in ipairs(players) do
        local distance = GetDistance(NPC, v)
        if distance < closestDistance then
            closestSpawn = v
            closestDistance = distance
        end
    end
    for k,v in ipairs(wave2) do
    local orc = GetSpawnByLocationID(zone, v)
    Attack(orc, closestSpawn)
    end
AddTimer(NPC,10000,"Wave3Start",1) -- testing value
-- AddTimer(NPC,120000,"Wave3Start",1) -- production value
end

function Wave3Start(NPC, Spawn)
local zone = GetZone(NPC)
local players = GetPlayersInZone(zone)
local closestSpawn = nil
local closestDistance = math.huge
    for k,v in ipairs(players) do
        local distance = GetDistance(NPC, v)
        if distance < closestDistance then
            closestSpawn = v
            closestDistance = distance
        end
    end
    for k,v in ipairs(wave3) do
    local orc = GetSpawnByLocationID(zone, v)
    Attack(orc, closestSpawn)
    end
AddTimer(NPC,10000,"Wave4Start",1) -- testing value
-- AddTimer(NPC,120000,"Wave4Start",1) -- production value
end

function Wave4Start(NPC, Spawn)
local zone = GetZone(NPC)
local players = GetPlayersInZone(zone)
local closestSpawn = nil
local closestDistance = math.huge
    for k,v in ipairs(players) do
        local distance = GetDistance(NPC, v)
        if distance < closestDistance then
            closestSpawn = v
            closestDistance = distance
        end
    end
Shout(NPC, "FORWARD! Mount their heads on the walls!",player,10000)
    for k,v in ipairs(wave4) do
    local orc = GetSpawnByLocationID(zone, v)
    Attack(orc, closestSpawn)
    end
-- AddTimer(NPC,10000,"Wave5Start",1) -- testing value
-- AddTimer(NPC,120000,"Wave5Start",1) -- production value
end

function respawn(NPC)
	spawn(NPC)
end