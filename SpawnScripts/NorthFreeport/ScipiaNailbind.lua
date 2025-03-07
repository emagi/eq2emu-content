--[[
    Script Name    : SpawnScripts/NorthFreeport/ScipiaNailbind.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:21
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
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -72.5, -34.59, -269.8, 2, 0)
	MovementLoopAddLocation(NPC, -72.96, -34.63, -260.1, 2, 0)
	MovementLoopAddLocation(NPC, -73.62, -40.33, -244.98, 2, 0)
	MovementLoopAddLocation(NPC, -74.77, -40.33, -240.15, 2, 0)
	MovementLoopAddLocation(NPC, -80.74, -40.33, -239.86, 2, 0)
	MovementLoopAddLocation(NPC, -84.79, -40.33, -245.56, 2, 0)
	MovementLoopAddLocation(NPC, -87.48, -40.35, -253.42, 2, 0)
	MovementLoopAddLocation(NPC, -98.01, -40.38, -257.81, 2, 0)
	MovementLoopAddLocation(NPC, -98.01, -40.38, -257.81, 2, 0)
	MovementLoopAddLocation(NPC, -111.53, -46.07, -262.6, 2, 0)
	MovementLoopAddLocation(NPC, -116.33, -45.95, -265.03, 2, 0)
	MovementLoopAddLocation(NPC, -114.92, -45.6, -275.32, 2, 0)
	MovementLoopAddLocation(NPC, -105.04, -42.58, -303.97, 2, 0)
	MovementLoopAddLocation(NPC, -105.09, -40.4, -334.08, 2, 0)
	MovementLoopAddLocation(NPC, -104.52, -34.64, -348.94, 2, 0)
	MovementLoopAddLocation(NPC, -102.64, -34.62, -354.02, 2, 0)
	MovementLoopAddLocation(NPC, -94.17, -34.59, -353.75, 2, 0)
	MovementLoopAddLocation(NPC, -84.1, -34.59, -344.89, 2, 0)
	MovementLoopAddLocation(NPC, -79.29, -34.59, -341.99, 2, 0)
	MovementLoopAddLocation(NPC, -77.36, -34.59, -296.99, 2, 0)
	MovementLoopAddLocation(NPC, -84.34, -34.59, -275.15, 2, 0)
	MovementLoopAddLocation(NPC, -86.58, -34.59, -268.03, 2, 0)
	MovementLoopAddLocation(NPC, -94.63, -34.59, -270.66, 2, 0)
	MovementLoopAddLocation(NPC, -100.3, -33.51, -275.06, 2, 0)
	MovementLoopAddLocation(NPC, -99.7, -33.51, -277.56, 2, 0)
	MovementLoopAddLocation(NPC, -103.3, -33.51, -279.33, 2, 0)
	MovementLoopAddLocation(NPC, -103.3, -33.51, -279.33, 2, 10)
	MovementLoopAddLocation(NPC, -99.89, -33.51, -278.47, 2, 0)
	MovementLoopAddLocation(NPC, -100.36, -33.51, -273.81, 2, 0)
	MovementLoopAddLocation(NPC, -94.43, -34.59, -270.61, 2, 0)
	MovementLoopAddLocation(NPC, -85.41, -34.59, -268.4, 2, 0)
	MovementLoopAddLocation(NPC, -83.4, -34.59, -278.18, 2, 0)
	MovementLoopAddLocation(NPC, -77.7, -34.59, -308.95, 2, 0)
	MovementLoopAddLocation(NPC, -77.15, -34.59, -338.66, 2, 0)
	MovementLoopAddLocation(NPC, -84.17, -34.59, -346.61, 2, 0)
	MovementLoopAddLocation(NPC, -96.33, -34.61, -350.62, 2, 0)
	MovementLoopAddLocation(NPC, -105.35, -34.64, -350.39, 2, 0)
	MovementLoopAddLocation(NPC, -104.6, -40.43, -333.66, 2, 0)
	MovementLoopAddLocation(NPC, -103.2, -42.59, -303, 2, 0)
	MovementLoopAddLocation(NPC, -115.02, -45.61, -274.68, 2, 0)
	MovementLoopAddLocation(NPC, -116.62, -45.94, -266.01, 2, 0)
	MovementLoopAddLocation(NPC, -111.76, -46.06, -262.76, 2, 0)
	MovementLoopAddLocation(NPC, -98.42, -40.39, -257.47, 2, 0)
	MovementLoopAddLocation(NPC, -83.6, -40.36, -255.34, 2, 0)
	MovementLoopAddLocation(NPC, -83.6, -40.36, -255.34, 2, 10)
	MovementLoopAddLocation(NPC, -84.32, -40.33, -243.44, 2, 0)
	MovementLoopAddLocation(NPC, -77.44, -40.33, -240.48, 2, 0)
	MovementLoopAddLocation(NPC, -74.15, -40.33, -245.05, 2, 0)
	MovementLoopAddLocation(NPC, -73.2, -34.63, -259.76, 2, 0)
	MovementLoopAddLocation(NPC, -72.1, -34.59, -271.1, 2, 0)
	MovementLoopAddLocation(NPC, -72.1, -34.59, -271.1, 2, 10)
end
