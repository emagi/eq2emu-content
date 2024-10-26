--[[
    Script Name    : SpawnScripts/Antonica/aMalevolentViper.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.24 04:09:12
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", 8 + DmgBonus) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", 15 + DmgBonus)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end