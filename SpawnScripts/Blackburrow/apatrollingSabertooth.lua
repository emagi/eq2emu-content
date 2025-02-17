--[[
    Script Name    : SpawnScripts/Blackburrow/apatrollingSabertooth.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.09 10:07:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
	AddTimer(NPC, 6000, "waypoints")
    VoiceBox(NPC)
end


function VoiceBox(NPC)
 	local choice = MakeRandomInt(1,2)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
    end
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==413991 then
	MovementLoopAddLocation(NPC, 20.12, 0, 10.8, 2, 0)
	MovementLoopAddLocation(NPC, 26.61, 0, 8.12, 2, 0)
	MovementLoopAddLocation(NPC, 34.39, 0.16, 6.38, 2, 0)
	MovementLoopAddLocation(NPC, 35.13, 0.01, 9.7, 2, 0)
	MovementLoopAddLocation(NPC, 32.61, 0, 12.02, 2, 0)
	MovementLoopAddLocation(NPC, 23.72, 0, 14.58, 2, 0)
	MovementLoopAddLocation(NPC, 12.19, 0.08, 12.84, 2, 0)
	MovementLoopAddLocation(NPC, 8.34, 0.04, 11.33, 2, 0)
	MovementLoopAddLocation(NPC, -0.3, 0, 10.59, 2, 0)
	MovementLoopAddLocation(NPC, -12.51, 0, 8.42, 2, 0)
	MovementLoopAddLocation(NPC, -22.08, 0, 8.12, 2, 0)
	MovementLoopAddLocation(NPC, -22.16, 0, 10.57, 2, 0)
	MovementLoopAddLocation(NPC, -12.75, 0, 9.89, 2, 0)
	MovementLoopAddLocation(NPC, -8.48, 0, 10.23, 2, 0)
	MovementLoopAddLocation(NPC, -6.69, 0, 11.79, 2, 0)
	MovementLoopAddLocation(NPC, -0.93, 0, 12.31, 2, 0)
	MovementLoopAddLocation(NPC, 2.45, 0, 8.24, 2, 0)
	MovementLoopAddLocation(NPC, 3.85, 0, 5.62, 2, 0)
	MovementLoopAddLocation(NPC, 10.18, 0, 5.79, 2, 0)
	MovementLoopAddLocation(NPC, 17.36, 0, 6.24, 2, 0)
	MovementLoopAddLocation(NPC, 19.92, 0.66, 1.08, 2, 0)
	MovementLoopAddLocation(NPC, 16.13, 0.38, -6.98, 2, 0)
	MovementLoopAddLocation(NPC, 13.71, 0.55, -16.49, 2, 0)
	MovementLoopAddLocation(NPC, 14.55, 0.55, -17.13, 2, 0)
	MovementLoopAddLocation(NPC, 18.53, 0.9, -2.75, 2, 0)
	MovementLoopAddLocation(NPC, 19.82, 0.67, 1.14, 2, 0)
	MovementLoopAddLocation(NPC, 17.38, 0.03, 5.61, 2, 0)
	MovementLoopAddLocation(NPC, 15.25, 0, 7.27, 2, 0)
	MovementLoopAddLocation(NPC, 4.77, 0, 5.85, 2, 0)
	MovementLoopAddLocation(NPC, -2.55, 0, 12.93, 2, 0)
	MovementLoopAddLocation(NPC, -10.78, 0.17, 10.46, 2, 0)
	MovementLoopAddLocation(NPC, -21.19, 0.28, 10.59, 2, 0)
	MovementLoopAddLocation(NPC, -21.74, 0, 8.93, 2, 0)
	MovementLoopAddLocation(NPC, -9.9, 0, 8.97, 2, 0)
	MovementLoopAddLocation(NPC, -2.68, 0, 10.53, 2, 0)
	MovementLoopAddLocation(NPC, 9.42, 0, 11.13, 2, 0)
	MovementLoopAddLocation(NPC, 12.74, 0.12, 12.96, 2, 0)
	MovementLoopAddLocation(NPC, 23.37, 0, 14.55, 2, 0)
	MovementLoopAddLocation(NPC, 34.09, 0.03, 11.31, 2, 0)
	MovementLoopAddLocation(NPC, 35.18, 0.23, 7.37, 2, 0)
	MovementLoopAddLocation(NPC, 32.96, 0, 5.36, 2, 0)
	MovementLoopAddLocation(NPC, 18.69, 0, 9.45, 2, 0)
	MovementLoopAddLocation(NPC, 12.03, 0, 5.12, 2, 0)
	MovementLoopAddLocation(NPC, 12.36, 0.1, -0.96, 2, 0)
	MovementLoopAddLocation(NPC, 16.56, 0.39, -7.55, 2, 0)
	MovementLoopAddLocation(NPC, 8.51, 0.46, -18.08, 2, 0)
	MovementLoopAddLocation(NPC, -5.32, 0.54, -12.8, 2, 0)
	MovementLoopAddLocation(NPC, -4.12, 0.36, -3.47, 2, 0)
	MovementLoopAddLocation(NPC, 0.14, 0, 0.04, 2, 0)
	MovementLoopAddLocation(NPC, 5.96, 0, -6.56, 2, 0)
	MovementLoopAddLocation(NPC, 9.27, 0, -8.02, 2, 0)
	MovementLoopAddLocation(NPC, 12.09, 0, -4.22, 2, 0)
	MovementLoopAddLocation(NPC, 18.88, 0.45, -5.67, 2, 0)
	MovementLoopAddLocation(NPC, 19.62, 0.55, -11.38, 2, 0)
	MovementLoopAddLocation(NPC, 16.04, 0.55, -16.35, 2, 0)
	MovementLoopAddLocation(NPC, 19.58, 0.52, -8.57, 2, 0)
	MovementLoopAddLocation(NPC, 17.29, 0.61, -4.24, 2, 0)
	MovementLoopAddLocation(NPC, 13.15, 0, -4.32, 2, 0)
	MovementLoopAddLocation(NPC, 8.34, 0, -8.3, 2, 0)
	MovementLoopAddLocation(NPC, 0.8, 0, -1.57, 2, 0)
	MovementLoopAddLocation(NPC, -1.69, 0, 0.11, 2, 0)
	MovementLoopAddLocation(NPC, -4.07, 0.15, -1.67, 2, 0)
	MovementLoopAddLocation(NPC, -5.23, 0.46, -10.57, 2, 0)
	MovementLoopAddLocation(NPC, -3.11, 0.42, -14.94, 2, 0)
	MovementLoopAddLocation(NPC, 4.93, 0.57, -19.66, 2, 0)
	MovementLoopAddLocation(NPC, 10.42, 0.35, -15.81, 2, 0)
	MovementLoopAddLocation(NPC, 17.03, 0.41, -7.99, 2, 0)
	MovementLoopAddLocation(NPC, 13.49, 0.21, -2.44, 2, 0)
	MovementLoopAddLocation(NPC, 11.61, 0.01, 1.08, 2, 0)
	MovementLoopAddLocation(NPC, 12.37, 0, 6.74, 2, 0)
	MovementLoopAddLocation(NPC, 18.96, 0, 10.71, 2, 0)
	elseif GetSpawnLocationID(NPC)==133771525 then
	MovementLoopAddLocation(NPC, -6.42, 0.83, -19.5, 2, 0)
	MovementLoopAddLocation(NPC, -6.42, 0.83, -19.5, 2, 2)
	MovementLoopAddLocation(NPC, -4.47, 0.56, -18.88, 2, 0)
	MovementLoopAddLocation(NPC, -11.27, 0.88, -20.01, 2, 0)
	MovementLoopAddLocation(NPC, -10.92, 0.89, -21.78, 2, 0)
	MovementLoopAddLocation(NPC, -7.09, -1.49, -27.61, 2, 0)
	MovementLoopAddLocation(NPC, 0.84, -3.91, -31.74, 2, 0)
	MovementLoopAddLocation(NPC, 1.62, -4.59, -35.67, 2, 0)
	MovementLoopAddLocation(NPC, -1.06, -5.92, -40.25, 2, 0)
	MovementLoopAddLocation(NPC, -5.93, -7.53, -39.77, 2, 0)
	MovementLoopAddLocation(NPC, -8.27, -8.17, -38.92, 2, 0)
	MovementLoopAddLocation(NPC, -11.15, -9.66, -34.99, 2, 0)
	MovementLoopAddLocation(NPC, -14.48, -11.3, -28.86, 2, 2)
	MovementLoopAddLocation(NPC, -15.11, -11.61, -27.12, 2, 0)
	MovementLoopAddLocation(NPC, -13.5, -10.89, -30.32, 2, 0)
	MovementLoopAddLocation(NPC, -9.32, -8.46, -38.66, 2, 0)
	MovementLoopAddLocation(NPC, -4.7, -6.95, -40.14, 2, 0)
	MovementLoopAddLocation(NPC, -0.26, -5.55, -39.2, 2, 0)
	MovementLoopAddLocation(NPC, 1.62, -4.52, -35.35, 2, 0)
	MovementLoopAddLocation(NPC, 1.05, -3.9, -31.62, 2, 0)
	MovementLoopAddLocation(NPC, -4.65, -2.22, -28.45, 2, 0)
	MovementLoopAddLocation(NPC, -8.75, -0.7, -26.43, 2, 0)
	MovementLoopAddLocation(NPC, -10.83, 0.89, -21.5, 2, 0)
	MovementLoopAddLocation(NPC, -9.22, 0.9, -20.72, 2, 0)

	elseif GetSpawnLocationID(NPC)==413973 then
	MovementLoopAddLocation(NPC, -39.57, 3.28, -22.96, 2, 0)
	MovementLoopAddLocation(NPC, -35.21, 3.87, -24.93, 2, 0)
	MovementLoopAddLocation(NPC, -31.49, 4.82, -25.17, 2, 0)
	MovementLoopAddLocation(NPC, -24.63, 6.28, -24.68, 2, 0)
	MovementLoopAddLocation(NPC, -22.69, 6.74, -22.41, 2, 0)
	MovementLoopAddLocation(NPC, -20.07, 7.25, -18.51, 2, 2)
	MovementLoopAddLocation(NPC, -19.47, 7.32, -16.33, 2, 0)
	MovementLoopAddLocation(NPC, -21.69, 6.92, -21.03, 2, 0)
	MovementLoopAddLocation(NPC, -23.41, 6.58, -23.76, 2, 0)
	MovementLoopAddLocation(NPC, -25.7, 6, -24.59, 2, 0)
	MovementLoopAddLocation(NPC, -32.66, 4.56, -24.94, 2, 0)
	MovementLoopAddLocation(NPC, -37.9, 3.48, -23.71, 2, 0)
	MovementLoopAddLocation(NPC, -42.15, 2.95, -20.83, 2, 0)
	MovementLoopAddLocation(NPC, -43.78, 2.34, -18.28, 2, 0)
	MovementLoopAddLocation(NPC, -44.22, 0.57, -10.62, 2, 2)
	MovementLoopAddLocation(NPC, -42.9, 0.18, -8.78, 2, 0)
	MovementLoopAddLocation(NPC, -44.15, 0.71, -11.73, 2, 0)
	MovementLoopAddLocation(NPC, -44.37, 1.95, -16.68, 2, 0)
	MovementLoopAddLocation(NPC, -42.79, 2.85, -20.63, 2, 0)
	
end
end

