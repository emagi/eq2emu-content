--[[
    Script Name    : SpawnScripts/NektulosClassic/TreeSnakeController4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.14 07:05:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC)
    GroupID = 1058126
    LevelMin = 21
    LevelMax = 23

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