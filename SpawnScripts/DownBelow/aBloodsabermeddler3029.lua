--[[
    Script Name    : SpawnScripts/DownBelow/aBloodsabermeddler3029.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 11:04:57
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 5
    local hp1 = 55
    local power1 = 35
    local difficulty2 = 5
    local hp2 = 65
    local power2 = 40
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
	MovementLoopAddLocation(NPC, 7.43, -4, -157.18, 2, 5)
	MovementLoopAddLocation(NPC, 7.68, -1.42, -149.21, 2, 5)
	MovementLoopAddLocation(NPC, 7.24, -2.93, -152.22, 2, 5)
	MovementLoopAddLocation(NPC, 8.74, -4, -160.17, 2, 5)
	MovementLoopAddLocation(NPC, 4.31, -4, -157.22, 2, 5)
	MovementLoopAddLocation(NPC, 6.16, -4, -155, 2, 5)
	MovementLoopAddLocation(NPC, 4.22, 0.3, -142.15, 2, 5)
	MovementLoopAddLocation(NPC, 7.55, -4, -160.08, 2, 5)
	MovementLoopAddLocation(NPC, 5.39, 0.12, -143.12, 2, 5)
	MovementLoopAddLocation(NPC, 6.71, -0.42, -147.18, 2, 5)
	MovementLoopAddLocation(NPC, 8.75, 0.3, -142.36, 2, 5)
	MovementLoopAddLocation(NPC, 8.93, -4, -157.95, 2, 5)
end
