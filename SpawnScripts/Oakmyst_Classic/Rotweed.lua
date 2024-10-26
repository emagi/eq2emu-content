--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/Rotweed.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 03:10:25
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(12 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(24 + dmgMod))
end

function aggro(NPC, Spawn)
    aggrotimer(NPC)
end

function aggrotimer(NPC)
    AddTimer(NPC,600000,"aggrotimer") -- Check is Thistles and Cube are up
local Rotweed = GetSpawnByLocationID(zone, 133779140)
    if IsInCombat(Rotweed) and Rotweed ~=nil then
    else
        Despawn(Rotweed) --Despawns Thistles and Cube, which disables update
    end
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end