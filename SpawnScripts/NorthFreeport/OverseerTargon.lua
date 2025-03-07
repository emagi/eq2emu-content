--[[
    Script Name    : SpawnScripts/NorthFreeport/OverseerTargon.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:13
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
	MovementLoopAddLocation(NPC, -224.17, -57.78, -149.26, 2, 0)
	MovementLoopAddLocation(NPC, -222.15, -57.8, -153.88, 2, 0)
	MovementLoopAddLocation(NPC, -218.33, -58.83, -163.17, 2, 0)
	MovementLoopAddLocation(NPC, -214.45, -58.83, -167.52, 2, 0)
	MovementLoopAddLocation(NPC, -207.35, -58.83, -172.43, 2, 0)
	MovementLoopAddLocation(NPC, -203.86, -58.83, -176.49, 2, 0)
	MovementLoopAddLocation(NPC, -202.09, -58.83, -181.56, 2, 0)
	MovementLoopAddLocation(NPC, -199.97, -58.83, -192.58, 2, 0)
	MovementLoopAddLocation(NPC, -197.4, -58.83, -195.45, 2, 0)
	MovementLoopAddLocation(NPC, -193.3, -58.83, -206.7, 2, 0)
	MovementLoopAddLocation(NPC, -185.84, -58.83, -215.12, 2, 0)
	MovementLoopAddLocation(NPC, -176.06, -58.79, -222.59, 2, 0)
	MovementLoopAddLocation(NPC, -165.14, -58.71, -261.34, 2, 0)
	MovementLoopAddLocation(NPC, -161.65, -53.03, -275.35, 2, 0)
	MovementLoopAddLocation(NPC, -154.39, -53.06, -278.66, 2, 0)
	MovementLoopAddLocation(NPC, -154.11, -53, -273.03, 2, 0)
	MovementLoopAddLocation(NPC, -154.11, -53, -273.03, 2, 8)
	MovementLoopAddLocation(NPC, -153.02, -53, -273.69, 2, 0)
	MovementLoopAddLocation(NPC, -152.78, -53.03, -275.4, 2, 0)
	MovementLoopAddLocation(NPC, -157.78, -53.05, -278.04, 2, 0)
	MovementLoopAddLocation(NPC, -160.04, -53.03, -275.42, 2, 0)
	MovementLoopAddLocation(NPC, -163.9, -58.33, -262.66, 2, 0)
	MovementLoopAddLocation(NPC, -173.81, -58.78, -233.93, 2, 0)
	MovementLoopAddLocation(NPC, -173.3, -58.78, -228.7, 2, 0)
	MovementLoopAddLocation(NPC, -173, -58.78, -217.76, 2, 0)
	MovementLoopAddLocation(NPC, -173, -58.78, -217.76, 2, 8)
	MovementLoopAddLocation(NPC, -175.42, -58.79, -221.72, 2, 0)
	MovementLoopAddLocation(NPC, -181.85, -58.81, -219.53, 2, 0)
	MovementLoopAddLocation(NPC, -190.33, -58.83, -211.21, 2, 0)
	MovementLoopAddLocation(NPC, -195.54, -58.83, -199.33, 2, 0)
	MovementLoopAddLocation(NPC, -199.53, -58.83, -193.17, 2, 0)
	MovementLoopAddLocation(NPC, -202.28, -58.83, -179.89, 2, 0)
	MovementLoopAddLocation(NPC, -206.91, -58.83, -172.97, 2, 0)
	MovementLoopAddLocation(NPC, -218.35, -58.83, -162.98, 2, 0)
	MovementLoopAddLocation(NPC, -220.86, -58.83, -157.07, 2, 0)
	MovementLoopAddLocation(NPC, -222.31, -57.79, -153.46, 2, 0)
	MovementLoopAddLocation(NPC, -224.17, -57.78, -149.26, 2, 0)
	MovementLoopAddLocation(NPC, -224.17, -57.78, -149.26, 2, 8)
end
