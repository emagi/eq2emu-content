--[[
    Script Name    : SpawnScripts/Blackburrow/InstructorGnarth.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 04:05:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(30 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(60 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -95.03, -0.68, -86.99, 2, 0)
	MovementLoopAddLocation(NPC, -95.03, -0.68, -86.99, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -99.2, -0.7, -110.72, 2, 0)
	MovementLoopAddLocation(NPC, -99.2, -0.7, -110.72, 2, MakeRandomInt(8,15))
end



