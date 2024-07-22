--[[
	Spawn Template
	Script Name	: circle_counterclockwise_small_02.lua
	Script Purpose	: Makes the spawn do a small circle in a counter-clockwise fashion.
	Script Author	: Scatman
	Script Date	: 2008-08-26
	Script Notes	: If the coords are out of bounds then the spawn will still go there.

	These are just suggested functions to get you started. Edit as needed.
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x - 2 , y, z + 8 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x + 7 , y, z + 5 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x     , y, z - 6 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x - 9 , y, z - 1 , 2, math.random(5, 15))
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
end