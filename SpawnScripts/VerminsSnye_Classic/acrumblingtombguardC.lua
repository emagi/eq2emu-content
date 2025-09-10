--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombguardC.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.09 08:09:33
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 161.07, -5.56, -189.89, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 162.54, -6.33, -187.49, 2, 0)
	MovementLoopAddLocation(NPC, 164.09, -6.62, -186.67, 2, 0)
	MovementLoopAddLocation(NPC, 164.09, -6.62, -186.67, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 162.34, -6.32, -188.22, 2, 0)
	MovementLoopAddLocation(NPC, 159.29, -5.73, -190.87, 2, 0)
	MovementLoopAddLocation(NPC, 157.94, -5.26, -194.3, 2, 0)
	MovementLoopAddLocation(NPC, 157.94, -5.26, -194.3, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 158.66, -5.6, -191.84, 2, 0)
	MovementLoopAddLocation(NPC, 158.66, -5.6, -191.84, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 160.42, -6.03, -189, 2, 0)
	MovementLoopAddLocation(NPC, 161.6, -6.19, -188.04, 2, 0)
	MovementLoopAddLocation(NPC, 161.6, -6.19, -188.04, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 159.2, -5.87, -189.89, 2, 0)
	MovementLoopAddLocation(NPC, 159.2, -5.87, -189.89, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 158.06, -5.4, -193.68, 2, 0)
	MovementLoopAddLocation(NPC, 157.63, -5.12, -196.09, 2, 0)
	MovementLoopAddLocation(NPC, 157.63, -5.12, -196.09, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 158.28, -5.42, -193.09, 2, 0)
end