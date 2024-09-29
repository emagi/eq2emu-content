--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aReefRavager.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.10 04:09:34
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(155 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(275 + dmgMod))
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

