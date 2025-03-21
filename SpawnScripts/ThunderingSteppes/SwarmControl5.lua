--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SwarmControl5.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.20 10:08:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    SpawnGroupByID(zone, 1057888, MakeRandomInt(21,23))
    RandomMovement(NPC, Spawn, 30, -30, 6, 12, 20)
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    if GetSpawnByGroupID(zone, 1057719) ~= nil then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133794193))
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end