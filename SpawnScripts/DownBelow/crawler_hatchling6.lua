--[[
	Script Name		:	crawler_hatchling6.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling6.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 03:50:41 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -31, 0.38, -107.45, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.52, -0.84, -102.99, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -23.45, -0.96, -100.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.44, -0.23, -95.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.11, 0.3, -95.9, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.39, -0.8, -99.28, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.31, -0.79, -100.06, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.33, -1.13, -103.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.9, -0.03, -110.4, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.7, -0.11, -118.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.61, -0.09, -118.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.85, -0.06, -123.91, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.07, -0.09, -133.9, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.05, 0.15, -150.91, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.18, -0.07, -153.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.52, -0.01, -152.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.18, -0.07, -153.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.05, 0.15, -150.91, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.07, -0.09, -133.9, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.85, -0.06, -123.91, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.61, -0.09, -118.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.7, -0.11, -118.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.9, -0.03, -110.4, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.33, -1.13, -103.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.31, -0.79, -100.06, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.39, -0.8, -99.28, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.11, 0.3, -95.9, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.44, -0.23, -95.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -23.45, -0.96, -100.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.52, -0.84, -102.99, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -31, 0.38, -107.45, 1, math.random(0,10))
end


