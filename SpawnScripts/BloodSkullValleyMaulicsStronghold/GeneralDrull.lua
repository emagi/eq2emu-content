--[[
    Script Name    : SpawnScripts/BloodSkullValleyMaulicsStronghold/GeneralDrull.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.01.23 10:01:55
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
    Bloodskull(NPC)
    OrcChainCommon(NPC)
    SetTempVariable(NPC,"waveevent","nil")
end

function StartWaveEvent(NPC, Spawn)
    Shout(NPC, "Invaders at the gate! To arms! Crush them!",player,10000)
    SetTempVariable(NPC,"waveevent",1)
end

function respawn(NPC)
	spawn(NPC)
end