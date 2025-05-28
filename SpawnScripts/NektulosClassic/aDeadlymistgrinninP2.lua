--[[
    Script Name    : SpawnScripts/NektulosClassic/aDeadlymistgrinninP2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.27 09:05:58
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
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
	MovementLoopAddLocation(NPC, 477.37, 25, -1422.7, 2, 0)
	MovementLoopAddLocation(NPC, 480, 25.63, -1419.88, 2, 0)
	MovementLoopAddLocation(NPC, 486.39, 21.77, -1408.74, 2, 0)
	MovementLoopAddLocation(NPC, 489.56, 16.81, -1394.45, 2, 0)
	MovementLoopAddLocation(NPC, 490.6, 8.02, -1367.68, 2, 0)
	MovementLoopAddLocation(NPC, 484.62, 0.64, -1344.73, 2, 0)
	MovementLoopAddLocation(NPC, 481.2, 0.58, -1324.68, 2, 0)
	MovementLoopAddLocation(NPC, 487.27, 0.29, -1303.12, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 487.27, 0.29, -1303.12, 2, 0)
	MovementLoopAddLocation(NPC, 483.03, 0.3, -1317.7, 2, 0)
	MovementLoopAddLocation(NPC, 485.55, 0.43, -1342.55, 2, 0)
	MovementLoopAddLocation(NPC, 492.26, 6.25, -1360.57, 2, 0)
	MovementLoopAddLocation(NPC, 489.43, 13.73, -1384.56, 2, 0)
	MovementLoopAddLocation(NPC, 490.38, 17.76, -1397.4, 2, 0)
	MovementLoopAddLocation(NPC, 481.58, 25.54, -1419.4, 2, 0)
	MovementLoopAddLocation(NPC, 477.37, 25, -1422.71, 2, 0)
	MovementLoopAddLocation(NPC, 477.37, 25, -1422.71, 2, MakeRandomInt(8,15))
end
