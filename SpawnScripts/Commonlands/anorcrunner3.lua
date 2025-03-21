--[[
    Script Name    : SpawnScripts/Commonlands/anorcrunner3.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.01.25 09:01:53
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Bloodskull(NPC)
    OrcArmorCommon(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC, Spawn)
    MovementLoopAddLocation(NPC, 260.84, -47.15, 515.66, 6, 0)
    MovementLoopAddLocation(NPC, 209.48, -47.97, 378.83, 6, 0)
    MovementLoopAddLocation(NPC, 191.14, -47.81, 374.14, 6, 0)
    MovementLoopAddLocation(NPC, 103.13, -48.04, 382.51, 6, 0)
    MovementLoopAddLocation(NPC, 38.47, -47.8, 388.65, 6, 0)
    MovementLoopAddLocation(NPC, -38.41, -47.4, 395.46, 6, 0)
    MovementLoopAddLocation(NPC, -78, -45.03, 392.58, 6, 0)
    MovementLoopAddLocation(NPC, -100.91, -48.02, 384.45, 6, 0)
    MovementLoopAddLocation(NPC, -119.4, -46.52, 377.9, 6, 0)
    MovementLoopAddLocation(NPC, -123.7, -48.01, 376.37, 6, 0)
    MovementLoopAddLocation(NPC, -168.62, -46.76, 357.86, 6, 0)
    MovementLoopAddLocation(NPC, -180.81, -46.96, 339.08, 6, 0)
    MovementLoopAddLocation(NPC, -221.67, -48.04, 290.47, 6, 0)
    MovementLoopAddLocation(NPC, -283.51, -46.94, 301.56, 6, 0)
    MovementLoopAddLocation(NPC, -311.78, -42.67, 308.46, 6, 0)
    MovementLoopAddLocation(NPC, -328.59, -44.13, 312.57, 6, 0)
    MovementLoopAddLocation(NPC, -366.75, -45.15, 321.99, 6, 0)
    MovementLoopAddLocation(NPC, -391.13, -45.82, 316.24, 6, 0)
    MovementLoopAddLocation(NPC, -412.88, -46.54, 300.93, 6, 0)
    MovementLoopAddLocation(NPC, -445.12, -46.98, 289.5, 6, 0)
    MovementLoopAddLocation(NPC, -486.72, -47.97, 291.72, 6, 0)
    MovementLoopAddLocation(NPC, -533.13, -47.15, 313.35, 6, 0)
    MovementLoopAddLocation(NPC, -580.83, -47.12, 349.93, 6, 0)
    MovementLoopAddLocation(NPC, -630.81, -47.07, 366.63, 6, 0)
    MovementLoopAddLocation(NPC, -644.96, -48.04, 382.43, 6, 0)
    MovementLoopAddLocation(NPC, -655.66, -45.43, 394.36, 6, 0)
    MovementLoopAddLocation(NPC, -667.81, -47.38, 407.91, 6, 0)
    MovementLoopAddLocation(NPC, -693.96, -48.04, 437.1, 6, 0)
    MovementLoopAddLocation(NPC, -740.88, -48.04, 485.52, 6, 0)
    MovementLoopAddLocation(NPC, -783.42, -48.04, 520.43, 6, 0)
    MovementLoopAddLocation(NPC, -818.55, -48.04, 532.58, 6, 0)
    MovementLoopAddLocation(NPC, -860.01, -47.78, 553.37, 6, 0)
    MovementLoopAddLocation(NPC, -872.48, -47.55, 572.33, 6, 0)
    MovementLoopAddLocation(NPC, -867.53, -47.9, 602.42, 6, 0)
    MovementLoopAddLocation(NPC, -849.8, -47.67, 619.53, 6, 0)
    MovementLoopAddLocation(NPC, -821.98, -47.93, 618.54, 6, 0)
    MovementLoopAddLocation(NPC, -777.57, -47.46, 629.38, 6, 0)
    MovementLoopAddLocation(NPC, -777.57, -47.46, 629.38, 6, 0)
    MovementLoopAddLocation(NPC, -745.81, -47.67, 629.12, 6, 0)
    MovementLoopAddLocation(NPC, -650.94, -47.71, 636.31, 6, 0)
    MovementLoopAddLocation(NPC, -603.35, -47.12, 641.11, 6, 0)
    MovementLoopAddLocation(NPC, -553.77, -44.54, 648.85, 6, 0)
    MovementLoopAddLocation(NPC, -509.37, -44.85, 644.05, 6, 0)
    MovementLoopAddLocation(NPC, -483.53, -46.92, 646.97, 6, 0)
    MovementLoopAddLocation(NPC, -446.2, -47.86, 652.26, 6, 0)
    MovementLoopAddLocation(NPC, -363.77, -47.91, 612.02, 6, 0)
    MovementLoopAddLocation(NPC, -246.79, -42.02, 554.9, 6, 0)
    MovementLoopAddLocation(NPC, -228.57, -42.15, 550.63, 6, 0)
    MovementLoopAddLocation(NPC, -211.85, -42.44, 553.6, 6, 0)
    MovementLoopAddLocation(NPC, -178.84, -47.06, 570.85, 6, 0)
    MovementLoopAddLocation(NPC, -148.81, -47.48, 586.55, 6, 0)
    MovementLoopAddLocation(NPC, -93.28, -42.43, 605.42, 6, 0)
    MovementLoopAddLocation(NPC, -52.47, -42.49, 613.96, 6, 0)
    MovementLoopAddLocation(NPC, -0.31, -46.91, 597.39, 6, 0)
    MovementLoopAddLocation(NPC, 101.67, -47.93, 602.12, 6, 0)
    MovementLoopAddLocation(NPC, -0.31, -46.91, 597.39, 6, 0)
    MovementLoopAddLocation(NPC, -52.47, -42.49, 613.96, 6, 0)
    MovementLoopAddLocation(NPC, -93.28, -42.43, 605.42, 6, 0)
    MovementLoopAddLocation(NPC, -148.81, -47.48, 586.55, 6, 0)
    MovementLoopAddLocation(NPC, -178.84, -47.06, 570.85, 6, 0)
    MovementLoopAddLocation(NPC, -211.85, -42.44, 553.6, 6, 0)
    MovementLoopAddLocation(NPC, -228.57, -42.15, 550.63, 6, 0)
    MovementLoopAddLocation(NPC, -246.79, -42.02, 554.9, 6, 0)
    MovementLoopAddLocation(NPC, -363.77, -47.91, 612.02, 6, 0)
    MovementLoopAddLocation(NPC, -446.2, -47.86, 652.26, 6, 0)
    MovementLoopAddLocation(NPC, -483.53, -46.92, 646.97, 6, 0)
    MovementLoopAddLocation(NPC, -509.37, -44.85, 644.05, 6, 0)
    MovementLoopAddLocation(NPC, -553.77, -44.54, 648.85, 6, 0)
    MovementLoopAddLocation(NPC, -603.35, -47.12, 641.11, 6, 0)
    MovementLoopAddLocation(NPC, -650.94, -47.71, 636.31, 6, 0)
    MovementLoopAddLocation(NPC, -745.81, -47.67, 629.12, 6, 0)
    MovementLoopAddLocation(NPC, -777.57, -47.46, 629.38, 6, 0)
    MovementLoopAddLocation(NPC, -777.57, -47.46, 629.38, 6, 0)
    MovementLoopAddLocation(NPC, -821.98, -47.93, 618.54, 6, 0)
    MovementLoopAddLocation(NPC, -849.8, -47.67, 619.53, 6, 0)
    MovementLoopAddLocation(NPC, -867.53, -47.9, 602.42, 6, 0)
    MovementLoopAddLocation(NPC, -872.48, -47.55, 572.33, 6, 0)
    MovementLoopAddLocation(NPC, -860.01, -47.78, 553.37, 6, 0)
    MovementLoopAddLocation(NPC, -818.55, -48.04, 532.58, 6, 0)
    MovementLoopAddLocation(NPC, -783.42, -48.04, 520.43, 6, 0)
    MovementLoopAddLocation(NPC, -740.88, -48.04, 485.52, 6, 0)
    MovementLoopAddLocation(NPC, -693.96, -48.04, 437.1, 6, 0)
    MovementLoopAddLocation(NPC, -667.81, -47.38, 407.91, 6, 0)
    MovementLoopAddLocation(NPC, -655.66, -45.43, 394.36, 6, 0)
    MovementLoopAddLocation(NPC, -644.96, -48.04, 382.43, 6, 0)
    MovementLoopAddLocation(NPC, -630.81, -47.07, 366.63, 6, 0)
    MovementLoopAddLocation(NPC, -580.83, -47.12, 349.93, 6, 0)
    MovementLoopAddLocation(NPC, -533.13, -47.15, 313.35, 6, 0)
    MovementLoopAddLocation(NPC, -486.72, -47.97, 291.72, 6, 0)
    MovementLoopAddLocation(NPC, -445.12, -46.98, 289.5, 6, 0)
    MovementLoopAddLocation(NPC, -412.88, -46.54, 300.93, 6, 0)
    MovementLoopAddLocation(NPC, -391.13, -45.82, 316.24, 6, 0)
    MovementLoopAddLocation(NPC, -366.75, -45.15, 321.99, 6, 0)
    MovementLoopAddLocation(NPC, -328.59, -44.13, 312.57, 6, 0)
    MovementLoopAddLocation(NPC, -311.78, -42.67, 308.46, 6, 0)
    MovementLoopAddLocation(NPC, -283.51, -46.94, 301.56, 6, 0)
    MovementLoopAddLocation(NPC, -221.67, -48.04, 290.47, 6, 0)
    MovementLoopAddLocation(NPC, -180.81, -46.96, 339.08, 6, 0)
    MovementLoopAddLocation(NPC, -168.62, -46.76, 357.86, 6, 0)
    MovementLoopAddLocation(NPC, -123.7, -48.01, 376.37, 6, 0)
    MovementLoopAddLocation(NPC, -119.4, -46.52, 377.9, 6, 0)
    MovementLoopAddLocation(NPC, -100.91, -48.02, 384.45, 6, 0)
    MovementLoopAddLocation(NPC, -78, -45.03, 392.58, 6, 0)
    MovementLoopAddLocation(NPC, -38.41, -47.4, 395.46, 6, 0)
    MovementLoopAddLocation(NPC, 38.47, -47.8, 388.65, 6, 0)
    MovementLoopAddLocation(NPC, 103.13, -48.04, 382.51, 6, 0)
    MovementLoopAddLocation(NPC, 191.14, -47.81, 374.14, 6, 0)
    MovementLoopAddLocation(NPC, 209.48, -47.97, 378.83, 6, 0)
    MovementLoopAddLocation(NPC, 260.84, -47.15, 515.66, 6, 0)
end