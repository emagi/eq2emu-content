--[[
    Script Name    : SpawnScripts/NorthFreeport/FlaeriusRubico.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:41
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
	MovementLoopAddLocation(NPC, -145.28, -40.81, -158.77, 2, 0)
	MovementLoopAddLocation(NPC, -143.92, -41.22, -158.23, 2, 0)
	MovementLoopAddLocation(NPC, -141.32, -41.22, -160.69, 2, 0)
	MovementLoopAddLocation(NPC, -142.18, -41.22, -162.38, 2, 0)
	MovementLoopAddLocation(NPC, -147.07, -43.39, -167.46, 2, 0)
	MovementLoopAddLocation(NPC, -146.25, -46.08, -174.34, 2, 0)
	MovementLoopAddLocation(NPC, -144.14, -46.08, -180.9, 2, 0)
	MovementLoopAddLocation(NPC, -141.11, -46.08, -183.72, 2, 0)
	MovementLoopAddLocation(NPC, -136.85, -46.08, -185, 2, 0)
	MovementLoopAddLocation(NPC, -129.85, -46.08, -184.61, 2, 0)
	MovementLoopAddLocation(NPC, -124.87, -46.07, -182.68, 2, 0)
	MovementLoopAddLocation(NPC, -121.31, -46.06, -185.51, 2, 0)
	MovementLoopAddLocation(NPC, -119.19, -46.05, -189.55, 2, 0)
	MovementLoopAddLocation(NPC, -122.37, -46.09, -193.29, 2, 0)
	MovementLoopAddLocation(NPC, -133.67, -51.81, -202.28, 2, 0)
	MovementLoopAddLocation(NPC, -138.05, -51.73, -204.72, 2, 0)
	MovementLoopAddLocation(NPC, -143.85, -51.83, -196.21, 2, 0)
	MovementLoopAddLocation(NPC, -154.94, -52.76, -183.24, 2, 0)
	MovementLoopAddLocation(NPC, -160.91, -54.22, -170.75, 2, 0)
	MovementLoopAddLocation(NPC, -168.05, -55.34, -151.9, 2, 0)
	MovementLoopAddLocation(NPC, -169.32, -55.67, -143.21, 2, 0)
	MovementLoopAddLocation(NPC, -170.24, -55.91, -133.57, 2, 0)
	MovementLoopAddLocation(NPC, -169.57, -56.1, -126.36, 2, 0)
	MovementLoopAddLocation(NPC, -167.64, -56.14, -120.51, 2, 0)
	MovementLoopAddLocation(NPC, -160.64, -56.14, -116.57, 2, 0)
	MovementLoopAddLocation(NPC, -160.64, -56.14, -116.57, 2, 8)
	MovementLoopAddLocation(NPC, -166.86, -56.14, -120.39, 2, 0)
	MovementLoopAddLocation(NPC, -170.33, -56.1, -126.73, 2, 0)
	MovementLoopAddLocation(NPC, -170.96, -55.96, -131.88, 2, 0)
	MovementLoopAddLocation(NPC, -168.94, -55.43, -149.84, 2, 0)
	MovementLoopAddLocation(NPC, -165.29, -54.85, -160.51, 2, 0)
	MovementLoopAddLocation(NPC, -153.99, -52.69, -183.45, 2, 0)
	MovementLoopAddLocation(NPC, -136.89, -51.76, -202.73, 2, 0)
	MovementLoopAddLocation(NPC, -134.35, -51.81, -201.66, 2, 0)
	MovementLoopAddLocation(NPC, -122.24, -46.08, -193.23, 2, 0)
	MovementLoopAddLocation(NPC, -120.78, -46.06, -186.74, 2, 0)
	MovementLoopAddLocation(NPC, -124.04, -46.07, -181.98, 2, 0)
	MovementLoopAddLocation(NPC, -125.83, -46.08, -176.73, 2, 0)
	MovementLoopAddLocation(NPC, -125.83, -46.08, -176.73, 2, 8)
	MovementLoopAddLocation(NPC, -125.32, -46.07, -181.76, 2, 0)
	MovementLoopAddLocation(NPC, -122.35, -46.07, -184.42, 2, 0)
	MovementLoopAddLocation(NPC, -117.86, -46.06, -186.01, 2, 0)
	MovementLoopAddLocation(NPC, -109.46, -46.07, -185.07, 2, 0)
	MovementLoopAddLocation(NPC, -109.46, -46.07, -185.07, 2, 8)
	MovementLoopAddLocation(NPC, -117.41, -46.05, -187.76, 2, 0)
	MovementLoopAddLocation(NPC, -121.18, -46.06, -185.94, 2, 0)
	MovementLoopAddLocation(NPC, -124.76, -46.07, -183.1, 2, 0)
	MovementLoopAddLocation(NPC, -132.5, -46.08, -185.41, 2, 0)
	MovementLoopAddLocation(NPC, -140.04, -46.08, -184.61, 2, 0)
	MovementLoopAddLocation(NPC, -144.16, -46.08, -180.54, 2, 0)
	MovementLoopAddLocation(NPC, -146.09, -46.08, -174.79, 2, 0)
	MovementLoopAddLocation(NPC, -147.04, -43.4, -167.58, 2, 0)
	MovementLoopAddLocation(NPC, -142.64, -41.25, -163.43, 2, 0)
	MovementLoopAddLocation(NPC, -141.29, -41.22, -160.79, 2, 0)
	MovementLoopAddLocation(NPC, -143.78, -41.22, -158.25, 2, 0)
	MovementLoopAddLocation(NPC, -145.28, -41.23, -158.77, 2, 0)
	MovementLoopAddLocation(NPC, -145.28, -41.23, -158.77, 2, 8)
end


