--[[
    Script Name    : SpawnScripts/NorthFreeport/FaunusBelicius.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:38
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")	
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -161.24, -57.58, -232.32, 2, 0)
	MovementLoopAddLocation(NPC, -159.85, -57.58, -236.05, 2, 0)
	MovementLoopAddLocation(NPC, -162.72, -57.55, -236.59, 2, 0)
	MovementLoopAddLocation(NPC, -165.4, -58.74, -230.97, 2, 0)
	MovementLoopAddLocation(NPC, -172.32, -58.79, -222.35, 2, 0)
	MovementLoopAddLocation(NPC, -184.1, -58.83, -215.24, 2, 0)
	MovementLoopAddLocation(NPC, -190.67, -58.83, -207.51, 2, 0)
	MovementLoopAddLocation(NPC, -194, -58.83, -198.61, 2, 0)
	MovementLoopAddLocation(NPC, -191.96, -58.83, -191.5, 2, 0)
	MovementLoopAddLocation(NPC, -185.45, -58.03, -186.4, 2, 0)
	MovementLoopAddLocation(NPC, -184.09, -58.03, -191.9, 2, 0)
	MovementLoopAddLocation(NPC, -184.09, -58.03, -191.9, 2, 60)
	MovementLoopAddLocation(NPC, -184.09, -58.03, -191.9, 2, 0)
	MovementLoopAddLocation(NPC, -185.49, -58.03, -187.33, 2, 0)
	MovementLoopAddLocation(NPC, -190.68, -58.83, -188.98, 2, 0)
	MovementLoopAddLocation(NPC, -193.25, -58.83, -195.66, 2, 0)
	MovementLoopAddLocation(NPC, -193.44, -58.83, -201.92, 2, 0)
	MovementLoopAddLocation(NPC, -190.73, -58.83, -207.61, 2, 0)
	MovementLoopAddLocation(NPC, -186.01, -58.83, -213.72, 2, 0)
	MovementLoopAddLocation(NPC, -179.55, -58.8, -218.48, 2, 0)
	MovementLoopAddLocation(NPC, -172.16, -58.79, -221.54, 2, 0)
	MovementLoopAddLocation(NPC, -165.22, -58.72, -219.19, 2, 0)
	MovementLoopAddLocation(NPC, -147.47, -51.77, -207.96, 2, 0)
	MovementLoopAddLocation(NPC, -148.89, -51.83, -201.34, 2, 0)
	MovementLoopAddLocation(NPC, -156.92, -52.18, -193.5, 2, 0)
	MovementLoopAddLocation(NPC, -161.97, -52.99, -184.63, 2, 0)
	MovementLoopAddLocation(NPC, -167.07, -54.31, -172.3, 2, 0)
	MovementLoopAddLocation(NPC, -172.46, -55.1, -158.02, 2, 0)
	MovementLoopAddLocation(NPC, -176.05, -55.66, -145.74, 2, 0)
	MovementLoopAddLocation(NPC, -176.99, -55.99, -133.19, 2, 0)
	MovementLoopAddLocation(NPC, -176.99, -55.99, -133.19, 2, 60)
	MovementLoopAddLocation(NPC, -176.99, -55.99, -133.19, 2, 0)
	MovementLoopAddLocation(NPC, -175.78, -55.71, -143.97, 2, 0)
	MovementLoopAddLocation(NPC, -170.7, -54.78, -163.52, 2, 0)
	MovementLoopAddLocation(NPC, -160.78, -52.83, -185.76, 2, 0)
	MovementLoopAddLocation(NPC, -153.23, -51.83, -197.48, 2, 0)
	MovementLoopAddLocation(NPC, -146.58, -51.82, -205.68, 2, 0)
	MovementLoopAddLocation(NPC, -148.49, -51.77, -208.76, 2, 0)
	MovementLoopAddLocation(NPC, -164.68, -58.72, -219.57, 2, 0)
	MovementLoopAddLocation(NPC, -172.62, -58.79, -221.57, 2, 0)
	MovementLoopAddLocation(NPC, -180.08, -58.81, -218.44, 2, 0)
	MovementLoopAddLocation(NPC, -187.3, -58.83, -212.44, 2, 0)
	MovementLoopAddLocation(NPC, -192.23, -58.83, -204.1, 2, 0)
	MovementLoopAddLocation(NPC, -194.33, -58.83, -197.74, 2, 0)
	MovementLoopAddLocation(NPC, -196.67, -58.83, -190.73, 2, 0)
	MovementLoopAddLocation(NPC, -196.67, -58.83, -190.73, 2, 60)
	MovementLoopAddLocation(NPC, -196.67, -58.83, -190.73, 2, 0)
	MovementLoopAddLocation(NPC, -196.17, -58.83, -193.55, 2, 0)
	MovementLoopAddLocation(NPC, -191.99, -58.83, -205.14, 2, 0)
	MovementLoopAddLocation(NPC, -185.51, -58.83, -214.19, 2, 0)
	MovementLoopAddLocation(NPC, -177.66, -58.8, -219.98, 2, 0)
	MovementLoopAddLocation(NPC, -173.63, -58.78, -224.93, 2, 0)
	MovementLoopAddLocation(NPC, -171.78, -58.77, -231.99, 2, 0)
	MovementLoopAddLocation(NPC, -167.7, -58.77, -244.94, 2, 0)
	MovementLoopAddLocation(NPC, -162.13, -58.73, -248.16, 2, 0)
	MovementLoopAddLocation(NPC, -162.13, -58.73, -248.16, 2, 60)
	MovementLoopAddLocation(NPC, -162.13, -58.73, -248.16, 2, 0)
	MovementLoopAddLocation(NPC, -164.82, -58.75, -250.31, 2, 0)
	MovementLoopAddLocation(NPC, -163.37, -58.71, -259.85, 2, 0)
	MovementLoopAddLocation(NPC, -158.91, -53.03, -274.93, 2, 0)
	MovementLoopAddLocation(NPC, -155.88, -53.1, -286.96, 2, 0)
	MovementLoopAddLocation(NPC, -154.66, -53.12, -301.25, 2, 0)
	MovementLoopAddLocation(NPC, -152.87, -53.12, -305.66, 2, 0)
	MovementLoopAddLocation(NPC, -147.45, -53.12, -305.06, 2, 0)
	MovementLoopAddLocation(NPC, -142.13, -51.86, -303.15, 2, 0)
	MovementLoopAddLocation(NPC, -142.13, -51.86, -303.15, 2, 0)
	MovementLoopAddLocation(NPC, -148.09, -53.12, -305.4, 2, 0)
	MovementLoopAddLocation(NPC, -152.39, -53.12, -305.15, 2, 0)
	MovementLoopAddLocation(NPC, -154.24, -53.12, -299.81, 2, 0)
	MovementLoopAddLocation(NPC, -158.38, -53.03, -274.93, 2, 0)
	MovementLoopAddLocation(NPC, -162.9, -58.71, -260.36, 2, 0)
	MovementLoopAddLocation(NPC, -167.14, -58.77, -245.51, 2, 0)
	MovementLoopAddLocation(NPC, -171.91, -58.77, -232.65, 2, 0)
	MovementLoopAddLocation(NPC, -170.86, -58.77, -230.3, 2, 0)
	MovementLoopAddLocation(NPC, -168.45, -58.76, -229.41, 2, 0)
	MovementLoopAddLocation(NPC, -166.12, -58.74, -232.12, 2, 0)
	MovementLoopAddLocation(NPC, -164.64, -57.56, -235.32, 2, 0)
	MovementLoopAddLocation(NPC, -161.54, -57.56, -237.24, 2, 0)
	MovementLoopAddLocation(NPC, -159.76, -57.58, -235.87, 2, 0)
	MovementLoopAddLocation(NPC, -161.24, -57.58, -232.32, 2, 0)
	MovementLoopAddLocation(NPC, -161.24, -57.58, -232.32, 2, 60)
	MovementLoopAddLocation(NPC, -161.24, -57.58, -232.32, 2, 0)
end
