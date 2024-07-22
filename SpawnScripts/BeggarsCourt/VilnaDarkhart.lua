--[[
    Script Name    : SpawnScripts/BeggarsCourt/VilnaDarkhart.lua
    Script Author  : Dorbin
    Script Date    : 2023.11.27 01:11:48
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
waypoints(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -13.98, -2.95, 69.12, 2, 1)
	MovementLoopAddLocation(NPC, -13.98, -2.95, 69.12, 2, MakeRandomInt(18,25),"EcologyEmotes")
	MovementLoopAddLocation(NPC, -13.42, -3.28, 67.25, 2, 0)
	MovementLoopAddLocation(NPC, -11.16, -7, 58.85, 2, 0)
	MovementLoopAddLocation(NPC, -6.03, -7, 53.49, 2, 0)
	MovementLoopAddLocation(NPC, 2.27, -7, 49.75, 2, 0)
	MovementLoopAddLocation(NPC, 12.56, -7, 50.32, 2, 0)
	MovementLoopAddLocation(NPC, 15.03, -7, 50.59, 2, 0)
	MovementLoopAddLocation(NPC, 23.18, -7, 57.81, 2, 0)
	MovementLoopAddLocation(NPC, 25.9, -7.11, 60.83, 2, 0)
	MovementLoopAddLocation(NPC, 28.76, -5.92, 60.51, 2, 0)
	MovementLoopAddLocation(NPC, 35.23, -2.78, 58.94, 2, 0)
	MovementLoopAddLocation(NPC, 37.63, -2.78, 60.18, 2, 0)
	MovementLoopAddLocation(NPC, 38.07, -2.78, 63.1, 2, 0)
	MovementLoopAddLocation(NPC, 35.62, -1.9, 64.11, 2, 0)
	MovementLoopAddLocation(NPC, 29.59, -0.07, 64.22, 2, 1)
	MovementLoopAddLocation(NPC, 29.59, -0.07, 64.22, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 29.59, -0.07, 64.22, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 29.59, -0.07, 64.22, 2, 0)
	MovementLoopAddLocation(NPC, 31.94, -0.17, 63.74, 2, 0)
	MovementLoopAddLocation(NPC, 36.74, -2.25, 62.22, 2, 0)
	MovementLoopAddLocation(NPC, 37.2, -2.78, 62.18, 2, 0)
	MovementLoopAddLocation(NPC, 37.15, -2.78, 61.28, 2, 0)
	MovementLoopAddLocation(NPC, 36.53, -2.78, 60.06, 2, 0)
	MovementLoopAddLocation(NPC, 26.28, -7.19, 62.36, 2, 0)
	MovementLoopAddLocation(NPC, 20.6, -7, 60.02, 2, 0)
	MovementLoopAddLocation(NPC, 20.15, -6.77, 50.04, 2, 0)
	MovementLoopAddLocation(NPC, 22.11, -6.25, 45.68, 2, 0)
	MovementLoopAddLocation(NPC, 24.7, -6, 42.44, 2, 1)
	MovementLoopAddLocation(NPC, 24.7, -6, 42.44, 2, 20,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 25.75, -6, 41.39, 2, 0)
	MovementLoopAddLocation(NPC, 26.85, -6, 40.92, 2, 0)
	MovementLoopAddLocation(NPC, 29.85, -5.75, 39.73, 2, 0)
	MovementLoopAddLocation(NPC, 32.46, -5.25, 35.2, 2, 0)
	MovementLoopAddLocation(NPC, 37.14, -5, 33.31, 2, 0)
	MovementLoopAddLocation(NPC, 51.36, -5, 29.88, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 56.01, -4.99, 29.61, 2, 0,"Door1")
	MovementLoopAddLocation(NPC, 57.37, -4.99, 27.95, 2, 0)
	MovementLoopAddLocation(NPC, 59.99, -4.99, 23.73, 2, 1)
	MovementLoopAddLocation(NPC, 59.99, -4.99, 23.73, 2, MakeRandomInt(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 60.42, -4.99, 25.16, 2, 0)
	MovementLoopAddLocation(NPC, 60.36, -4.99, 27.29, 2, 0)
	MovementLoopAddLocation(NPC, 60.22, -4.99, 32.25, 2, 1)
	MovementLoopAddLocation(NPC, 60.22, -4.99, 32.25, 2, MakeRandomInt(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 58.54, -4.99, 29.97, 2, 0)
	MovementLoopAddLocation(NPC, 56.17, -4.99, 29.69, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 51.19, -5, 29.41, 2, 0,"Door1")
	MovementLoopAddLocation(NPC, 48.48, -5, 31.82, 2, 0)
	MovementLoopAddLocation(NPC, 36.1, -5, 31.12, 2, 0)
	MovementLoopAddLocation(NPC, 31.59, -5, 29.45, 2, 0)
	MovementLoopAddLocation(NPC, 28.69, -5, 27.68, 2, 0)
	MovementLoopAddLocation(NPC, 24.46, -5, 27.64, 2, 0)
	MovementLoopAddLocation(NPC, 17.82, -5, 28.95, 2, 0)
	MovementLoopAddLocation(NPC, 11.18, -5, 27.4, 2, 0)
	MovementLoopAddLocation(NPC, 4.3, -5.75, 30.41, 2, 0)
	MovementLoopAddLocation(NPC, 0.54, -6, 32.04, 2, 1)
	MovementLoopAddLocation(NPC, 0.54, -6, 32.04, 2, MakeRandomInt(18,25),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 0.98, -6, 35.29, 2, 0)
	MovementLoopAddLocation(NPC, -1.92, -7, 47.35, 2, 0)
	MovementLoopAddLocation(NPC, -7.18, -7, 73.4, 2, 1)
	MovementLoopAddLocation(NPC, -7.18, -7, 73.4, 2, MakeRandomInt(18,25),"EcologyEmotes")
	MovementLoopAddLocation(NPC, -6.06, -7, 71.99, 2, 0)
	MovementLoopAddLocation(NPC, -6.22, -7, 67.14, 2, 0)
	MovementLoopAddLocation(NPC, -5.33, -7, 60.3, 2, 0)
	MovementLoopAddLocation(NPC, -7.44, -7, 59.2, 2, 0)
	MovementLoopAddLocation(NPC, -8.79, -5.06, 64.26, 2, 0)
	MovementLoopAddLocation(NPC, -10.06, -3, 69.02, 2, 0)
	MovementLoopAddLocation(NPC, -12.48, -2.82, 71.68, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, -13.41, -2.83, 76.45, 2, 0,"Door2")
	MovementLoopAddLocation(NPC, -13.41, -2.33, 78.95, 2, 0)
	MovementLoopAddLocation(NPC, -17.71, -2.33, 79.99, 2, 1)
	MovementLoopAddLocation(NPC, -17.71, -2.33, 79.99, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -16.25, -2.33, 80.18, 2, 0)
	MovementLoopAddLocation(NPC, -12.88, -2.33, 80.57, 2, 1)
	MovementLoopAddLocation(NPC, -12.88, -2.33, 80.57, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -13.25, -2.34, 78.82, 2, 0)
	MovementLoopAddLocation(NPC, -13.07, -2.83, 76.96, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, -12.19, -2.82, 71.79, 2, 0,"Door2")
	MovementLoopAddLocation(NPC, -13.09, -2.86, 70.43, 2, 0)
end


function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 1370073)
    UseWidget(door)
end

function Door2(NPC,Spawn)
    local door = GetSpawn(NPC, 1370079)
    UseWidget(door)
end