--[[
    Script Name    : SpawnScripts/NektulosClassic/MistGrinninController15.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.16 08:05:25
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC)
    GroupID = 1058145
    LevelMin = 24
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