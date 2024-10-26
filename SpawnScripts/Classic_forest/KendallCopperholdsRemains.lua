--[[
    Script Name    : SpawnScripts/Classic_forest/KendallCopperholdsRemains.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.17 01:10:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetSpawnAnimation(NPC, 13016)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(15 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(26 + dmgMod))
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end