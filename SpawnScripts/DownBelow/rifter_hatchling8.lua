--[[
	Script Name		:	rifter_hatchling8.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling8.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:19:06 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
	MovementLoopAddLocation(NPC, -164.64, -0.24, -76.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.53, -0.11, -73.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.67, -0.27, -74.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.68, -0.28, -87.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.03, -0.07, -92.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.58, -0.01, -94.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.56, -0.04, -100.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.63, -0.01, -105.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.36, -0.1, -105.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.47, -0.03, -111.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.36, -0.1, -105.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.63, -0.01, -105.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.56, -0.04, -100.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.58, -0.01, -94.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.03, -0.07, -92.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.68, -0.28, -87.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.67, -0.27, -74.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.53, -0.11, -73.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -164.64, -0.24, -76.05, 2, math.random(0,5))
end


