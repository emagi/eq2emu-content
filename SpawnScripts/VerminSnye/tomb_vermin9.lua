--[[
	Script Name		:	tomb_vermin9.lua
	Script Purpose	:	Waypoint Path for tomb_vermin9.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 10:34:32 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =12
    local level2 = 13
    local difficulty1 = 6
    local hp1 = 550
    local power1 = 185
    local difficulty2 = 6
    local hp2 = 680
    local power2 = 205
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 38.3, 0.46, -161.22, 2, 0)
	MovementLoopAddLocation(NPC, 50.75, -0.24, -160.32, 2, 0)
	MovementLoopAddLocation(NPC, 44.37, 0.36, -161.95, 2, 0)
	MovementLoopAddLocation(NPC, 26.32, -0.13, -161.23, 2, 0)
	MovementLoopAddLocation(NPC, 18.99, -0.05, -161.32, 2, 0)
	MovementLoopAddLocation(NPC, 16.28, -0.08, -166.5, 2, 0)
	MovementLoopAddLocation(NPC, 19.27, -0.21, -176.75, 2, 0)
	MovementLoopAddLocation(NPC, 19.89, -0.08, -184.91, 2, 0)
	MovementLoopAddLocation(NPC, 25.5, -0.08, -185.88, 2, 0)
	MovementLoopAddLocation(NPC, 26.31, -0.11, -195.23, 2, 0)
	MovementLoopAddLocation(NPC, 17.23, -0.08, -202.35, 2, 0)
	MovementLoopAddLocation(NPC, 7.36, -0.08, -202.93, 2, 0)
	MovementLoopAddLocation(NPC, 4.75, -0.08, -196.93, 2, 0)
	MovementLoopAddLocation(NPC, -12.75, 0.15, -197.35, 2, 0)
	MovementLoopAddLocation(NPC, -15.83, -0.04, -193.21, 2, 0)
	MovementLoopAddLocation(NPC, -15.5, -0.02, -187.29, 2, 0)
	MovementLoopAddLocation(NPC, -9.36, 0.44, -178.85, 2, 0)
	MovementLoopAddLocation(NPC, -9.36, -0.06, -172.84, 2, 0)
	MovementLoopAddLocation(NPC, -17.44, -0.14, -165.81, 2, 0)
	MovementLoopAddLocation(NPC, -16.28, -0.04, -160.79, 2, 0)
	MovementLoopAddLocation(NPC, -12.48, -0.15, -155.81, 2, 0)
	MovementLoopAddLocation(NPC, -12.46, -0.12, -147.13, 2, 0)
	MovementLoopAddLocation(NPC, 16.98, 1.21, -146.22, 2, 0)
	MovementLoopAddLocation(NPC, 31.35, 1.22, -139.37, 2, 0)
	MovementLoopAddLocation(NPC, 32.59, 1.22, -140.94, 2, 0)
	MovementLoopAddLocation(NPC, 32.57, 1.21, -148.15, 2, 0)
	MovementLoopAddLocation(NPC, 27.31, 1.21, -148.38, 2, 0)
	MovementLoopAddLocation(NPC, 20.22, 1.21, -141.19, 2, 0)
	MovementLoopAddLocation(NPC, 15.53, 1.21, -139.81, 2, 0)
	MovementLoopAddLocation(NPC, 15.83, -0.26, -131.37, 2, 0)
	MovementLoopAddLocation(NPC, 26.94, -0.34, -131.53, 2, 0)
	MovementLoopAddLocation(NPC, 37.17, -0.33, -131.52, 2, 0)
	MovementLoopAddLocation(NPC, 40.01, -0.34, -138.41, 2, 0)
	MovementLoopAddLocation(NPC, 56.63, 0.04, -142.31, 2, 0)
	MovementLoopAddLocation(NPC, 51.37, 0.04, -149.61, 2, 0)
	MovementLoopAddLocation(NPC, 37, -0.04, -147.42, 2, 0)
	MovementLoopAddLocation(NPC, 41.16, -0.27, -131.38, 2, 0)
	MovementLoopAddLocation(NPC, 16.02, -0.34, -132.31, 2, 0)
	MovementLoopAddLocation(NPC, 16.63, 1.21, -144.26, 2, 0)
	MovementLoopAddLocation(NPC, 26.1, 1.21, -145.74, 2, 0)
	MovementLoopAddLocation(NPC, 26.54, -0.11, -160.94, 2, 0)
	MovementLoopAddLocation(NPC, 26.1, 1.21, -145.74, 2, 0)
	MovementLoopAddLocation(NPC, 16.63, 1.21, -144.26, 2, 0)
	MovementLoopAddLocation(NPC, 16.02, -0.34, -132.31, 2, 0)
	MovementLoopAddLocation(NPC, 41.16, -0.27, -131.38, 2, 0)
	MovementLoopAddLocation(NPC, 37, -0.04, -147.42, 2, 0)
	MovementLoopAddLocation(NPC, 51.37, 0.04, -149.61, 2, 0)
	MovementLoopAddLocation(NPC, 56.63, 0.04, -142.31, 2, 0)
	MovementLoopAddLocation(NPC, 40.01, -0.34, -138.41, 2, 0)
	MovementLoopAddLocation(NPC, 37.17, -0.33, -131.52, 2, 0)
	MovementLoopAddLocation(NPC, 26.94, -0.34, -131.53, 2, 0)
	MovementLoopAddLocation(NPC, 15.83, -0.26, -131.37, 2, 0)
	MovementLoopAddLocation(NPC, 15.53, 1.21, -139.81, 2, 0)
	MovementLoopAddLocation(NPC, 20.22, 1.21, -141.19, 2, 0)
	MovementLoopAddLocation(NPC, 27.31, 1.21, -148.38, 2, 0)
	MovementLoopAddLocation(NPC, 32.57, 1.21, -148.15, 2, 0)
	MovementLoopAddLocation(NPC, 32.59, 1.22, -140.94, 2, 0)
	MovementLoopAddLocation(NPC, 31.35, 1.22, -139.37, 2, 0)
	MovementLoopAddLocation(NPC, 16.98, 1.21, -146.22, 2, 0)
	MovementLoopAddLocation(NPC, -12.46, -0.12, -147.13, 2, 0)
	MovementLoopAddLocation(NPC, -12.48, -0.15, -155.81, 2, 0)
	MovementLoopAddLocation(NPC, -16.28, -0.04, -160.79, 2, 0)
	MovementLoopAddLocation(NPC, -17.44, -0.14, -165.81, 2, 0)
	MovementLoopAddLocation(NPC, -9.36, -0.06, -172.84, 2, 0)
	MovementLoopAddLocation(NPC, -9.36, 0.44, -178.85, 2, 0)
	MovementLoopAddLocation(NPC, -15.5, -0.02, -187.29, 2, 0)
	MovementLoopAddLocation(NPC, -15.83, -0.04, -193.21, 2, 0)
	MovementLoopAddLocation(NPC, -12.75, 0.15, -197.35, 2, 0)
	MovementLoopAddLocation(NPC, 4.75, -0.08, -196.93, 2, 0)
	MovementLoopAddLocation(NPC, 7.36, -0.08, -202.93, 2, 0)
	MovementLoopAddLocation(NPC, 17.23, -0.08, -202.35, 2, 0)
	MovementLoopAddLocation(NPC, 26.31, -0.11, -195.23, 2, 0)
	MovementLoopAddLocation(NPC, 25.5, -0.08, -185.88, 2, 0)
	MovementLoopAddLocation(NPC, 19.89, -0.08, -184.91, 2, 0)
	MovementLoopAddLocation(NPC, 19.27, -0.21, -176.75, 2, 0)
	MovementLoopAddLocation(NPC, 16.28, -0.08, -166.5, 2, 0)
	MovementLoopAddLocation(NPC, 18.99, -0.05, -161.32, 2, 0)
	MovementLoopAddLocation(NPC, 26.32, -0.13, -161.23, 2, 0)
	MovementLoopAddLocation(NPC, 44.37, 0.36, -161.95, 2, 0)
	MovementLoopAddLocation(NPC, 50.75, -0.24, -160.32, 2, 0)
	MovementLoopAddLocation(NPC, 38.3, 0.46, -161.22, 2, 0)
end


