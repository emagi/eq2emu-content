--[[
    Script Name    : SpawnScripts/Antonica/aCavemawsentinelC.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.19 06:07:56
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -996.51, -15.55, 86.58, 2, 5)
	MovementLoopAddLocation(NPC, -999.89, -17.24, 79.03, 2, 0)
	MovementLoopAddLocation(NPC, -999.16, -19.4, 66.22, 2, 0)
	MovementLoopAddLocation(NPC, -992.95, -20.78, 53.39, 2, 0)
	MovementLoopAddLocation(NPC, -976.74, -19.62, 53.74, 2, 0)
	MovementLoopAddLocation(NPC, -967.99, -19.12, 51.34, 2, 0)
	MovementLoopAddLocation(NPC, -964.53, -19.69, 43.49, 2, 0)
	MovementLoopAddLocation(NPC, -962.07, -20.71, 27.96, 2, 0)
	MovementLoopAddLocation(NPC, -960.52, -20.3, 10.68, 2, 0)
	MovementLoopAddLocation(NPC, -951.41, -19.58, -0.47, 2, 0)
	MovementLoopAddLocation(NPC, -927.83, -19.25, -20.71, 2, 0)
	MovementLoopAddLocation(NPC, -918.53, -18.72, -24.32, 2, 0)
	MovementLoopAddLocation(NPC, -910.11, -19.08, -23.1, 2, 0)
	MovementLoopAddLocation(NPC, -902.37, -17.17, -30.91, 2, 0)
	MovementLoopAddLocation(NPC, -894.05, -14.42, -39.51, 2, 0)
	MovementLoopAddLocation(NPC, -886.08, -12.53, -42.73, 2, 0)
	MovementLoopAddLocation(NPC, -872.83, -11.7, -45.99, 2, 0)
	MovementLoopAddLocation(NPC, -869.06, -10.92, -50.97, 2, 0)
	MovementLoopAddLocation(NPC, -869.35, -10.49, -54.62, 2, 0)
	MovementLoopAddLocation(NPC, -875.88, -8.85, -66.45, 2, 0)
	MovementLoopAddLocation(NPC, -885.11, -7.71, -76.23, 2, 0)
	MovementLoopAddLocation(NPC, -886.89, -7.12, -86.1, 2, 0)
	MovementLoopAddLocation(NPC, -885.57, -7.56, -96.53, 2, 0)
	MovementLoopAddLocation(NPC, -881.16, -8.56, -108.69, 2, 0)
	MovementLoopAddLocation(NPC, -877.26, -9.31, -118.45, 2, 0)
	MovementLoopAddLocation(NPC, -869.64, -9.96, -126.45, 2, 0)
	MovementLoopAddLocation(NPC, -863.99, -7.66, -148.91, 2, 0)
	MovementLoopAddLocation(NPC, -872.2, -6.56, -169.82, 2, 0)
	MovementLoopAddLocation(NPC, -878.06, -6.25, -179.66, 2, 0)
	MovementLoopAddLocation(NPC, -883.1, -6.08, -185.32, 2, 0)
	MovementLoopAddLocation(NPC, -878.02, -6.15, -181.65, 2, 0)
	MovementLoopAddLocation(NPC, -873.31, -6.53, -170.64, 2, 0)
	MovementLoopAddLocation(NPC, -867.73, -6.97, -158.93, 2, 0)
	MovementLoopAddLocation(NPC, -866.13, -7.32, -150.97, 2, 0)
	MovementLoopAddLocation(NPC, -867.79, -9.66, -134.01, 2, 0)
	MovementLoopAddLocation(NPC, -873.61, -9.7, -123.78, 2, 0)
	MovementLoopAddLocation(NPC, -880.72, -8.84, -114.04, 2, 0)
	MovementLoopAddLocation(NPC, -885.59, -7.65, -98.17, 2, 0)
	MovementLoopAddLocation(NPC, -886.46, -7.14, -87.25, 2, 0)
	MovementLoopAddLocation(NPC, -883.87, -7.57, -78, 2, 0)
	MovementLoopAddLocation(NPC, -878.08, -8.38, -69.91, 2, 0)
	MovementLoopAddLocation(NPC, -872.81, -9.15, -64, 2, 0)
	MovementLoopAddLocation(NPC, -869.01, -10.34, -55.75, 2, 0)
	MovementLoopAddLocation(NPC, -869.52, -11.07, -49.95, 2, 0)
	MovementLoopAddLocation(NPC, -878.61, -11.89, -45.71, 2, 0)
	MovementLoopAddLocation(NPC, -887.02, -13.08, -41.43, 2, 0)
	MovementLoopAddLocation(NPC, -907.94, -18.52, -25.67, 2, 0)
	MovementLoopAddLocation(NPC, -911.38, -18.83, -23.96, 2, 0)
	MovementLoopAddLocation(NPC, -916.14, -18.52, -25.12, 2, 0)
	MovementLoopAddLocation(NPC, -923.64, -19.14, -22.05, 2, 0)
	MovementLoopAddLocation(NPC, -936.17, -19.67, -15.67, 2, 0)
	MovementLoopAddLocation(NPC, -945.57, -19.79, -6.74, 2, 0)
	MovementLoopAddLocation(NPC, -954.59, -19.48, 1.21, 2, 0)
	MovementLoopAddLocation(NPC, -959.28, -20.2, 9.41, 2, 0)
	MovementLoopAddLocation(NPC, -961.23, -21.1, 17.68, 2, 0)
	MovementLoopAddLocation(NPC, -962.2, -20.15, 34.77, 2, 0)
	MovementLoopAddLocation(NPC, -964.08, -19.58, 44.1, 2, 0)
	MovementLoopAddLocation(NPC, -969.21, -19.26, 50.93, 2, 0)
	MovementLoopAddLocation(NPC, -989.41, -20.5, 54.31, 2, 0)
	MovementLoopAddLocation(NPC, -996.11, -20.38, 57.51, 2, 0)
	MovementLoopAddLocation(NPC, -998.85, -19.46, 65.66, 2, 0)
	MovementLoopAddLocation(NPC, -999.18, -17.73, 75.44, 2, 0)
	MovementLoopAddLocation(NPC, -996.51, -15.55, 86.58, 2, 0)
end

