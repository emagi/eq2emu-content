--[[
    Script Name    : SpawnScripts/BloodSkullValleyMaulicsStronghold/aBloodskulllookout.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.01.23 10:01:21
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
bouncers = {1,2,3}

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Bloodskull(NPC)
    OrcArmorCommon(NPC)
    reinforcementLoop(NPC, Spawn)
    SetTempVariable(NPC, "bouncersDead", "0")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function bouncerCheck(NPC, Spawn) -- check if the bouncers are alive. If they're dead, send to next function to spawn reinforcements.
    local zone = GetZone(NPC)
    local bouncer1 = GetSpawnByLocationID(zone, 381006)
    local bouncer2 = GetSpawnByLocationID(zone, 381007)
    local bouncer3 = GetSpawnByLocationID(zone, 381009)
    local bouncer4 = GetSpawnByLocationID(zone, 381013)
    if IsAlive(bouncer1) == true then
    elseif IsAlive(bouncer2) == true then
    elseif IsAlive(bouncer3) == true then
    elseif IsAlive(bouncer4) == true then
    else
        SetTempVariable(NPC, "bouncersDead", "1")
        AddTimer(NPC, 3000, "reinforcementLoop")
    end
end

function reinforcementLoop(NPC, Spawn) -- Spawn the reinforcement, then get it to move to camp. If there are bouncers up, do nothing.
    local zone = GetZone(NPC)
    if GetTempVariable(NPC, "bouncersDead") == "1" then
        local reinforcement = SpawnByLocationID(zone, 380984)
        AddTimer(reinforcement, 500, "moveToCamp")
    else end
    if reinforcement ~= nil then
        AddTimer(NPC, 3000, "bouncerCheck")
    end
end