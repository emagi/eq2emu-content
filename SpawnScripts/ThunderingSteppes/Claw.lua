--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Claw.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.31 08:07:48
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
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end