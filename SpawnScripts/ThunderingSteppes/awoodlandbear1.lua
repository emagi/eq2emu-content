--[[
    Script Name    : SpawnScripts/ThunderingSteppes/awoodlandbear1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.23 08:08:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1332.12, -0.82, -145.42, 2, 0)
	MovementLoopAddLocation(NPC, 1329.32, -0.53, -159.52, 2, 0)
	MovementLoopAddLocation(NPC, 1318.71, -0.92, -182.83, 2, 0)
	MovementLoopAddLocation(NPC, 1312.01, -1.09, -210.03, 2, 0)
	MovementLoopAddLocation(NPC, 1313.1, -0.82, -226.34, 2, 0)
	MovementLoopAddLocation(NPC, 1315.65, -0.51, -233.81, 2, 0)
	MovementLoopAddLocation(NPC, 1322.75, 0.27, -243.67, 2, 0)
	MovementLoopAddLocation(NPC, 1325.26, 0.74, -256.35, 2, 0)
	MovementLoopAddLocation(NPC, 1327.63, 1.03, -288.12, 2, 0)
	MovementLoopAddLocation(NPC, 1327.63, 1.03, -288.12, 2, 0)
	MovementLoopAddLocation(NPC, 1327.51, 0.92, -271.04, 2, 0)
	MovementLoopAddLocation(NPC, 1320.43, 0.27, -249.87, 2, 0)
	MovementLoopAddLocation(NPC, 1313.17, -0.7, -234.35, 2, 0)
	MovementLoopAddLocation(NPC, 1312.43, -1.06, -209.46, 2, 0)
	MovementLoopAddLocation(NPC, 1319.47, -0.86, -183.4, 2, 0)
	MovementLoopAddLocation(NPC, 1332.12, -0.82, -145.42, 2, 0)
	MovementLoopAddLocation(NPC, 1332.12, -0.82, -145.42, 2, 0)
end