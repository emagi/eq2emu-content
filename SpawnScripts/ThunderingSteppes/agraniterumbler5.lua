--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agraniterumbler5.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 08:10:22
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
	MovementLoopAddLocation(NPC, 853.12, -32.55, 1065.52, 2, 0)
	MovementLoopAddLocation(NPC, 845.77, -31.76, 1071.88, 2, 0)
	MovementLoopAddLocation(NPC, 838.86, -30.52, 1073.79, 2, 0)
	MovementLoopAddLocation(NPC, 831.33, -28.7, 1072.98, 2, 0)
	MovementLoopAddLocation(NPC, 825.69, -27.14, 1070.77, 2, 0)
	MovementLoopAddLocation(NPC, 820.61, -25.75, 1065.98, 2, 0)
	MovementLoopAddLocation(NPC, 818.43, -24.63, 1061.09, 2, 0)
	MovementLoopAddLocation(NPC, 817.77, -22.98, 1054.55, 2, 0)
	MovementLoopAddLocation(NPC, 819.52, -20.62, 1048.75, 2, 0)
	MovementLoopAddLocation(NPC, 823.06, -16.72, 1040.49, 2, 0)
	MovementLoopAddLocation(NPC, 829.4, -14.39, 1032.51, 2, 0)
	MovementLoopAddLocation(NPC, 825.04, -15.45, 1036.88, 2, 0)
	MovementLoopAddLocation(NPC, 821.2, -17.81, 1043.29, 2, 0)
	MovementLoopAddLocation(NPC, 818.4, -21.92, 1051.62, 2, 0)
	MovementLoopAddLocation(NPC, 818.01, -24.19, 1059.18, 2, 0)
	MovementLoopAddLocation(NPC, 819.92, -25.46, 1064.72, 2, 0)
	MovementLoopAddLocation(NPC, 824.1, -26.74, 1069.4, 2, 0)
	MovementLoopAddLocation(NPC, 830.13, -28.38, 1072.25, 2, 0)
	MovementLoopAddLocation(NPC, 836.88, -30.15, 1073.54, 2, 0)
	MovementLoopAddLocation(NPC, 843.45, -31.42, 1072.41, 2, 0)
	MovementLoopAddLocation(NPC, 853.12, -32.55, 1065.52, 2, 0)
end