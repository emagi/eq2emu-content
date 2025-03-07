--[[
    Script Name    : SpawnScripts/NorthFreeport/ElderClurg.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:54
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")	
    AddTimer(NPC, 6000, "waypoints")
    IdleAggressive(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -134.74, -53.12, -355.9, 2, 0)
	MovementLoopAddLocation(NPC, -148.4, -53.12, -348.96, 2, 0)
	MovementLoopAddLocation(NPC, -148.4, -53.12, -348.96, 2, 60)
	MovementLoopAddLocation(NPC, -140.59, -53.12, -354.09, 2, 0)
	MovementLoopAddLocation(NPC, -135.31, -53.12, -369.46, 2, 0)
	MovementLoopAddLocation(NPC, -135.31, -53.12, -369.46, 2, 60)
	MovementLoopAddLocation(NPC, -136.91, -53.12, -365.44, 2, 0)
	MovementLoopAddLocation(NPC, -140.88, -53.12, -360.21, 2, 0)
	MovementLoopAddLocation(NPC, -146.5, -53.12, -351.87, 2, 0)
	MovementLoopAddLocation(NPC, -146.27, -53.12, -341.53, 2, 0)
	MovementLoopAddLocation(NPC, -146.27, -53.12, -341.53, 2, 60)
	MovementLoopAddLocation(NPC, -145.57, -53.12, -339.8, 2, 0)
	MovementLoopAddLocation(NPC, -136.98, -53.12, -337.5, 2, 0)
	MovementLoopAddLocation(NPC, -129.08, -53.12, -325.31, 2, 0)
	MovementLoopAddLocation(NPC, -129.08, -53.12, -325.31, 2, 60)
	MovementLoopAddLocation(NPC, -145.71, -53.12, -339.83, 2, 0)
	MovementLoopAddLocation(NPC, -145.71, -53.12, -339.83, 2, 60)
	MovementLoopAddLocation(NPC, -143.05, -53.12, -337.79, 2, 0)
	MovementLoopAddLocation(NPC, -142.93, -53.12, -334.44, 2, 0)
	MovementLoopAddLocation(NPC, -149.07, -53.12, -326.07, 2, 0)
	MovementLoopAddLocation(NPC, -155.18, -53.12, -324.58, 2, 0)
	MovementLoopAddLocation(NPC, -155.18, -53.12, -324.58, 2, 60)
	MovementLoopAddLocation(NPC, -152.62, -53.12, -324.61, 2, 0)
	MovementLoopAddLocation(NPC, -141.11, -53.12, -331.54, 2, 0)
	MovementLoopAddLocation(NPC, -135.38, -53.12, -342.89, 2, 0)
	MovementLoopAddLocation(NPC, -134.74, -53.12, -355.9, 2, 0)
	MovementLoopAddLocation(NPC, -134.74, -53.12, -355.9, 2, 60)
end

