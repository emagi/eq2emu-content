--[[
	Script Name		:	tomb_priest2.lua
	Script Purpose	:	Waypoint Path for tomb_priest2.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:08:19 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 765
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 890
    local power2 = 270
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
	MovementLoopAddLocation(NPC, 250.87, -6.86, -134.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 253.97, -6.86, -136.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.2, -6.86, -136.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.36, -6.86, -139.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 241.52, -6.86, -146.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235.92, -6.86, -144.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 249.37, -6.86, -140.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 249.26, -6.86, -131.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 250.25, -6.86, -139.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235.09, -6.86, -149.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235, -6.86, -145.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235.09, -6.86, -149.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 250.25, -6.86, -139.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 249.26, -6.86, -131.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 249.37, -6.86, -140.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235.92, -6.86, -144.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 241.52, -6.86, -146.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.36, -6.86, -139.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.2, -6.86, -136.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 253.97, -6.86, -136.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 250.87, -6.86, -134.09, 2, math.random(0,10))
end


