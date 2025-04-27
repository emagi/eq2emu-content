--[[
    Script Name    : SpawnScripts/NektulosClassic/RampSentryController.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.27 02:04:14
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = 133795952
    GroupID = 1058079
    LevelMin = 23
    LevelMax = 25

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