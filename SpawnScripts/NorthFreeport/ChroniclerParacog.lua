--[[
    Script Name    : SpawnScripts/NorthFreeport/ChroniclerParacog.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:21
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcology2Hail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcology2Callout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -90.86, -33.51, -274.13, 2, 0)
	MovementLoopAddLocation(NPC, -86.87, -33.51, -288.33, 2, 0)
	MovementLoopAddLocation(NPC, -84.14, -33.51, -302.19, 2, 0)
	MovementLoopAddLocation(NPC, -82.27, -33.51, -316.68, 2, 0)
	MovementLoopAddLocation(NPC, -82.42, -33.51, -329.78, 2, 0)
	MovementLoopAddLocation(NPC, -81.47, -33.51, -331.2, 2, 0)
	MovementLoopAddLocation(NPC, -81.47, -33.51, -331.2, 2, 8)
	MovementLoopAddLocation(NPC, -82.2, -33.51, -327.51, 2, 0)
	MovementLoopAddLocation(NPC, -82.94, -33.51, -317.15, 2, 0)
	MovementLoopAddLocation(NPC, -83.73, -33.51, -306.09, 2, 0)
	MovementLoopAddLocation(NPC, -82.79, -33.51, -304.47, 2, 0)
	MovementLoopAddLocation(NPC, -82.79, -33.51, -304.47, 2, 8)
	MovementLoopAddLocation(NPC, -84.07, -33.51, -303.71, 2, 0)
	MovementLoopAddLocation(NPC, -87.04, -33.51, -289.33, 2, 0)
	MovementLoopAddLocation(NPC, -90.89, -33.51, -278.1, 2, 0)
	MovementLoopAddLocation(NPC, -92.16, -33.51, -276.64, 2, 0)
	MovementLoopAddLocation(NPC, -96.53, -33.51, -277.26, 2, 0)
	MovementLoopAddLocation(NPC, -96.53, -33.51, -277.26, 2, 8)
	MovementLoopAddLocation(NPC, -90.86, -33.51, -274.13, 2, 0)
	MovementLoopAddLocation(NPC, -90.86, -33.51, -274.13, 2, 8)
end
