--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/AmbassadorKialee.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.22 01:10:09
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseFairy1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    local dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(5 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(15 + dmgMod))

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end