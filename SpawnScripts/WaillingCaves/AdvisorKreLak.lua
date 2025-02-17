--[[
    Script Name    : SpawnScripts/WaillingCaves/AdvisorKreLak.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 04:07:40
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    Named(NPC)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(30 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(60 + dmgMod))
    OrcArmorCommon(NPC)
    AddTimer(NPC, 500, "door_closed") -- DOOR CLOSED BY DEFAULT
end

function door_closed(NPC, Spawn)
local door = GetSpawn(NPC, 2580086)
    CloseDoor(door)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
local door = GetSpawn(NPC, 2580086) -- OPEN SECRET DOOR IF ADVISOR IS DEAD
    OpenDoor(door)
end

function respawn(NPC)
	spawn(NPC)
end