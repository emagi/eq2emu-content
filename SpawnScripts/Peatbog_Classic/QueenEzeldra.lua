--[[
    Script Name    : SpawnScripts/Peatbog_Classic/QueenEzeldra.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.05 04:11:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/Fairy_PeatBog.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(12 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(24 + dmgMod))

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end