--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SwarmControl1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.01 12:08:59
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    SpawnGroupByID(zone, 1057719, MakeRandomInt(21,23))
    RandomMovement(NPC, Spawn, 20, -20, 6, 8, 15)
    AddTimer(NPC, 6000, "SpawnCheck")
end

function SpawnCheck(NPC)
    local zone = GetZone(NPC)
    if GetSpawnByGroupID(zone, 1057719) ~= nil then
        AddTimer(NPC, 6000, "SpawnCheck")
    else
        Despawn(GetSpawnByLocationID(zone, 133793362))
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end