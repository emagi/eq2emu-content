--[[
    Script Name    : SpawnScripts/Antonica/ChiefKeizall.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.03.13 12:03:47
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(55 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(95 + dmgMod))
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end