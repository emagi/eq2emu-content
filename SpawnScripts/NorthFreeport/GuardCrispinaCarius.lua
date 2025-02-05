--[[
    Script Name    : SpawnScripts/NorthFreeport/GuardCrispinaCarius.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.25 04:01:05
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -144.92, -24.38, -55.74, 2, 0)
	MovementLoopAddLocation(NPC, -128.57, -24.37, -55.2, 2, 0)
	MovementLoopAddLocation(NPC, -116.86, -24.37, -54.64, 2, 0)
	MovementLoopAddLocation(NPC, -108.83, -24.37, -51.56, 2, 0)
	MovementLoopAddLocation(NPC, -102.14, -24.37, -51.48, 2, 0)
	MovementLoopAddLocation(NPC, -93.96, -24.37, -53.08, 2, 0)
	MovementLoopAddLocation(NPC, -88.78, -24.37, -51.72, 2, 0)
	MovementLoopAddLocation(NPC, -80.94, -24.37, -48.11, 2, 0)
	MovementLoopAddLocation(NPC, -63.22, -24.37, -46.7, 2, 0)
	MovementLoopAddLocation(NPC, -50.36, -24.37, -42.54, 2, 0)
	MovementLoopAddLocation(NPC, -40.17, -24.37, -41.05, 2, 0)
	MovementLoopAddLocation(NPC, -35.02, -22.1, -41.47, 2, 0)
	MovementLoopAddLocation(NPC, -29.9, -20.01, -43.93, 2, 0)
	MovementLoopAddLocation(NPC, -27.35, -18.3, -47.47, 2, 0)
	MovementLoopAddLocation(NPC, -26.47, -16.25, -51.52, 2, 0)
	MovementLoopAddLocation(NPC, -27.08, -14.73, -55.02, 2, 0)
	MovementLoopAddLocation(NPC, -28.9, -13.02, -58.42, 2, 0)
	MovementLoopAddLocation(NPC, -32.34, -13.05, -62.23, 2, 0)
	MovementLoopAddLocation(NPC, -31.65, -12.52, -66.07, 2, 0)
	MovementLoopAddLocation(NPC, -27.47, -12.96, -71.64, 2, 0)
	MovementLoopAddLocation(NPC, -24.12, -13.25, -71.31, 2, 0)
	MovementLoopAddLocation(NPC, -0.07, -17.25, -60.29, 2, 0)
	MovementLoopAddLocation(NPC, -27.48, -12.93, -74.32, 2, 0)
	MovementLoopAddLocation(NPC, -46.05, -10.56, -85.46, 2, 0)
	MovementLoopAddLocation(NPC, -48.11, -9.78, -91.83, 2, 0)
	MovementLoopAddLocation(NPC, -31.81, -8.37, -149.36, 2, 0)
	MovementLoopAddLocation(NPC, -41.98, -8.56, -115.98, 2, 0)
	MovementLoopAddLocation(NPC, -42.34, -8.61, -115.04, 2, 0)
	MovementLoopAddLocation(NPC, -47.92, -9.59, -96.8, 2, 0)
	MovementLoopAddLocation(NPC, -46.36, -10.2, -88.98, 2, 0)
	MovementLoopAddLocation(NPC, -40.62, -11.52, -82.72, 2, 0)
	MovementLoopAddLocation(NPC, -30.54, -12.66, -76.58, 2, 0)
	MovementLoopAddLocation(NPC, -36.51, -13.04, -62.98, 2, 0)
	MovementLoopAddLocation(NPC, -29.56, -13.03, -58.98, 2, 0)
	MovementLoopAddLocation(NPC, -27.19, -14.74, -54.93, 2, 0)
	MovementLoopAddLocation(NPC, -26.65, -16.51, -51.15, 2, 0)
	MovementLoopAddLocation(NPC, -27.81, -18.48, -47.15, 2, 0)
	MovementLoopAddLocation(NPC, -30.69, -20.22, -44.04, 2, 0)
	MovementLoopAddLocation(NPC, -34.42, -21.76, -42.44, 2, 0)
	MovementLoopAddLocation(NPC, -39.22, -24.12, -41.68, 2, 0)
	MovementLoopAddLocation(NPC, -53.89, -24.37, -42.95, 2, 0)
	MovementLoopAddLocation(NPC, -61.28, -24.37, -46.75, 2, 0)
	MovementLoopAddLocation(NPC, -69.86, -24.37, -47.78, 2, 0)
	MovementLoopAddLocation(NPC, -77.42, -24.37, -47.49, 2, 0)
	MovementLoopAddLocation(NPC, -82.86, -24.37, -49.05, 2, 0)
	MovementLoopAddLocation(NPC, -88.89, -24.37, -51.74, 2, 0)
	MovementLoopAddLocation(NPC, -92.64, -24.37, -52.36, 2, 0)
	MovementLoopAddLocation(NPC, -97.46, -24.37, -51.72, 2, 0)
	MovementLoopAddLocation(NPC, -104.26, -24.37, -50.59, 2, 0)
	MovementLoopAddLocation(NPC, -106.87, -24.37, -51.16, 2, 0)
	MovementLoopAddLocation(NPC, -115.25, -24.37, -54.57, 2, 0)
	MovementLoopAddLocation(NPC, -124.41, -24.37, -55.4, 2, 0)
	MovementLoopAddLocation(NPC, -132.67, -24.37, -54.15, 2, 0)
end