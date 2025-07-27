--[[
    Script Name    : SpawnScripts/BloodSkullValleyMaulicsStronghold/GeneralDrull.lua
    Script Author  : LordPazuzu & n3veruary
    Script Date    : 2024.01.23 10:01:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

waves = {
{380962,380963,380961,380956,380957}, -- #1 location IDs first wave of heralds and heretics
{380954,380958,380960,380959,380955}, -- #2 location IDs second wave of heralds and heretics
{380883,380864,380865,380867,380887,380888}, -- #3 location IDs first wave of soldiers and fanatics
{380873,380882,380897,380892,380874,380879,380899,380901,380878}, -- #4 location IDs second wave of soliders and fanatics
{380964, 380989, 380900, 380880, 380872, 380869}, -- #5 location IDs gorlak group
{380966, 380967, 360972, 380971, 380970, 380968}, -- #6 location IDs first wave of heralds and heretics
{380973,380976, 380977, 380975, 380978, 380974}, -- #7 location IDs second wave of fanatics and soldiders
{380983,380951,380965,380981, 380982, 380969} -- #8 final wave, general drull
}

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
    SetTempVariable(NPC,"wavecounter","1")
    TriggerNextWave(NPC, Spawn)
end

function TriggerNextWave(NPC,Spawn)
local zone = GetZone(NPC)
local players = GetPlayersInZone(zone)
local closestPlayer = nil
local closestDistance = math.huge
    for k,v in ipairs(players) do -- determine closest player to Drull
        local distance = GetDistance(NPC, v)
        if distance < closestDistance then
            closestSpawn = v
            closestDistance = distance
        end 
    end
    currentWave = tonumber(GetTempVariable(NPC,"wavecounter")) or 1
    if currentWave > #waves then return end
    if currentWave == 4 then -- set custom wave behavior
        Shout(NPC, "FORWARD! Mount their heads on the walls!",player,10000)
    elseif currentWave == 5 then
        Shout(NPC, "Gorlak! Show them your might!",player,10000)
    elseif currentWave == 7 then
        Shout(NPC, "Still alive, are you?! Not for long!",player,10000)
    elseif currentWave == 8 then
        Shout(NPC, "ARGH! Fine! I'll kill you myself!",player,10000)
        SpawnSet(NPC,"attackable","1")
    else end
    for k,v in ipairs(waves[currentWave]) do
        local orc = GetSpawnByLocationID(zone, v)
        Attack(orc, closestSpawn)
    end
SetTempVariable(NPC,"wavecounter",tostring(currentWave +1))
AddTimer(NPC,10000,"TriggerNextWave",1)
end

function respawn(NPC)
	spawn(NPC)
end