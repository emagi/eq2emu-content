--[[
	Script Name     : SpawnScripts/Generic/tiny_movement_loop.lua 
	Script Purpose  : a tiny movement loop
	Script Author   : theFoof
	Script Date     : 2013.5.22
	Script Notes    :
--]]
function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 1
    local hp1 = 50
    local power1 = 25
    local difficulty2 = 1
    local hp2 = 55
    local power2 = 30
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
    ChooseMovement(NPC)
end

function ChooseMovement(NPC)
	local choice = math.random(1, 4)
	if choice == 1 then
		clockwise1(NPC)
	elseif choice == 2 then
		clockwise2(NPC)
	elseif choice == 3 then
		counter_clockwise1(NPC)
	elseif choice == 4 then
		counter_clockwise2(NPC)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 3 , y, z - 4 , 1, math.random(2, 5))
	MovementLoopAddLocation(NPC, x - 1 , y, z - 6, 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 6, y, z + 5 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x + 1 , y, z + 4 , 1, math.random(2, 5))
end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 2 , y, z - 4 , 1, math.random(2, 5))
	MovementLoopAddLocation(NPC, x - 7 , y, z - 1 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x     , y, z + 2 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x + 5 , y, z + 1 , 1, math.random(2, 5))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 3 , y, z + 4 , 1, math.random(2, 5))
	MovementLoopAddLocation(NPC, x + 1 , y, z + 6, 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x + 4, y, z - 5 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 1 , y, z - 4 , 1, math.random(2, 5))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 2 , y, z + 4 , 1, math.random(2, 5))
	MovementLoopAddLocation(NPC, x + 3 , y, z + 1 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x     , y, z - 2 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 5 , y, z - 1 , 1, math.random(2, 5))
end
