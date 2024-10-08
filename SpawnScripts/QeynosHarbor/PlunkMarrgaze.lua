--[[
    Script Name    : SpawnScripts/QeynosHarbor/PlunkMarrgaze.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 05:06:03
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 711.19, -20.65, -112.71, 2, 15)
	MovementLoopAddLocation(NPC, 706.69, -20.9, -103.82, 2, 0)
	MovementLoopAddLocation(NPC, 717.92, -20.74, -79.46, 2, 0)
	MovementLoopAddLocation(NPC, 722.53, -20.85, -72.98, 2, 0)
	MovementLoopAddLocation(NPC, 754.99, -21.51, -60.04, 2, 0)
	MovementLoopAddLocation(NPC, 784.63, -21.22, -63.58, 2, 0)
	MovementLoopAddLocation(NPC, 815.42, -21.21, -64.58, 2, 0)
	MovementLoopAddLocation(NPC, 849.13, -25.36, -66.87, 2, 0)
	MovementLoopAddLocation(NPC, 864.65, -25.49, -73.46, 2, 15)
	MovementLoopAddLocation(NPC, 865.83, -25.44, -68.76, 2, 0)
	MovementLoopAddLocation(NPC, 878.48, -25.36, -64.4, 2, 0)
	MovementLoopAddLocation(NPC, 895.85, -25.34, -48.54, 2, 0)
	MovementLoopAddLocation(NPC, 901.92, -23.67, -34.63, 2, 0)
	MovementLoopAddLocation(NPC, 909.06, -25.41, -2.36, 2, 0)
	MovementLoopAddLocation(NPC, 913.78, -25.52, 28.02, 2, 15)
	MovementLoopAddLocation(NPC, 914.05, -25.52, 28.69, 2, 0)
	MovementLoopAddLocation(NPC, 900.26, -25.42, 34.07, 2, 0)
	MovementLoopAddLocation(NPC, 889.64, -25.37, 44.75, 2, 0)
	MovementLoopAddLocation(NPC, 857.68, -25.39, 43.05, 2, 0)
	MovementLoopAddLocation(NPC, 847.21, -23.16, 43.18, 2, 0)
	MovementLoopAddLocation(NPC, 835.6, -23.31, 46.23, 2, 0)
	MovementLoopAddLocation(NPC, 828.73, -23.32, 63.32, 2, 0)
	MovementLoopAddLocation(NPC, 820.42, -23.33, 81.32, 2, 0)
	MovementLoopAddLocation(NPC, 820.14, -23.33, 100.85, 2, 0)
	MovementLoopAddLocation(NPC, 806.74, -20.97, 137.96, 2, 0)
	MovementLoopAddLocation(NPC, 816.79, -20.98, 141.78, 2, 15)
	MovementLoopAddLocation(NPC, 817.33, -20.99, 141.52, 2, 0)
	MovementLoopAddLocation(NPC, 806.4, -20.95, 139.8, 2, 0)
    MovementLoopAddLocation(NPC, 810.08, -20.96, 140.48 , 2, 0)
    MovementLoopAddLocation(NPC, 812.16, -23.33, 124.05, 2, 0)
	MovementLoopAddLocation(NPC, 815.99, -23.48, 123.96, 2, 0)
	MovementLoopAddLocation(NPC, 825.93, -23.36, 130.21, 2, 0)
	MovementLoopAddLocation(NPC, 836.92, -23.44, 129.57, 2, 0)
	MovementLoopAddLocation(NPC, 837.81, -23.53, 129.15, 2, 15)
	MovementLoopAddLocation(NPC, 837.93, -23.53, 129.09, 2, 0)
	MovementLoopAddLocation(NPC, 837.99, -23.36, 124.3, 2, 0)
	MovementLoopAddLocation(NPC, 836.3, -23.36, 116.29, 2, 0)
	MovementLoopAddLocation(NPC, 828.68, -23.36, 109.02, 2, 0)
	MovementLoopAddLocation(NPC, 823.88, -23.36, 107.8, 2, 0)
	MovementLoopAddLocation(NPC, 820.15, -23.33, 103.08, 2, 0)
	MovementLoopAddLocation(NPC, 819.94, -23.33, 82.65, 2, 0)
	MovementLoopAddLocation(NPC, 831.15, -23.32, 57.73, 2, 0)
	MovementLoopAddLocation(NPC, 831.81, -23.31, 44.93, 2, 0)
	MovementLoopAddLocation(NPC, 844.15, -23.13, 40.94, 2, 0)
	MovementLoopAddLocation(NPC, 858.72, -25.37, 39.01, 2, 0)
	MovementLoopAddLocation(NPC, 873.43, -25.43, 40.36, 2, 0)
	MovementLoopAddLocation(NPC, 886.28, -25.41, 41.32, 2, 0)
	MovementLoopAddLocation(NPC, 890.34, -25.4, 38.72, 2, 0)
	MovementLoopAddLocation(NPC, 897.69, -25.4, 23.53, 2, 0)
	MovementLoopAddLocation(NPC, 901.19, -25.42, 5.18, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.43, -4.11, 2, 0)
	MovementLoopAddLocation(NPC, 900.11, -25.43, -13.96, 2, 0)
	MovementLoopAddLocation(NPC, 897.73, -25.43, -22.96, 2, 0)
	MovementLoopAddLocation(NPC, 894.09, -23.42, -36.67, 2, 0)
	MovementLoopAddLocation(NPC, 890.63, -25.37, -48.95, 2, 0)
	MovementLoopAddLocation(NPC, 884.65, -25.4, -55.1, 2, 0)
	MovementLoopAddLocation(NPC, 876.12, -25.45, -58.44, 2, 0)
	MovementLoopAddLocation(NPC, 864.08, -25.43, -58.96, 2, 0)
	MovementLoopAddLocation(NPC, 847.74, -25.41, -59.68, 2, 0)
	MovementLoopAddLocation(NPC, 785.87, -21.29, -58.52, 2, 0)
	MovementLoopAddLocation(NPC, 778.29, -21.49, -51.78, 2, 0)
	MovementLoopAddLocation(NPC, 764.53, -20.91, -37.95, 2, 0)
	MovementLoopAddLocation(NPC, 756.07, -21.03, -15.38, 2, 0)
	MovementLoopAddLocation(NPC, 736.99, -20.92, -9.36, 2, 15)
	MovementLoopAddLocation(NPC, 736.52, -20.87, -7.64, 2, 0)
	MovementLoopAddLocation(NPC, 733.82, -20.9, -10.93, 2, 0)
	MovementLoopAddLocation(NPC, 701.92, -20.64, -13.82, 2, 0)
	MovementLoopAddLocation(NPC, 693.83, -20.64, -9.77, 2, 0)
	MovementLoopAddLocation(NPC, 685.67, -20.85, 1.31, 2, 0)
	MovementLoopAddLocation(NPC, 685.33, -20.88, 1.94, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 682.18, -20.66, 8.95, 2, 0)
	MovementLoopAddLocation(NPC, 677.52, -20.63, 16.87, 2, 0)
	MovementLoopAddLocation(NPC, 679.22, -20.66, 24.81, 2, 25)
	MovementLoopAddLocation(NPC, 678.89, -20.66, 24.18, 2, 0)
	MovementLoopAddLocation(NPC, 688.25, -20.66, 25, 2, 0)
	MovementLoopAddLocation(NPC, 693.59, -21.09, 30.37, 2, 25)
	MovementLoopAddLocation(NPC, 690.04, -20.66, 25.49, 2, 0)
	MovementLoopAddLocation(NPC, 666.81, -20.66, 16.73, 2, 25)
	MovementLoopAddLocation(NPC, 671.87, -20.63, 15.9, 2, 0)
	MovementLoopAddLocation(NPC, 679.99, -20.66, 8.49, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 688.26, -20.67, -1.58, 2, 0)
	MovementLoopAddLocation(NPC, 693.65, -20.64, -18.73, 2, 0)
	MovementLoopAddLocation(NPC, 700.63, -21, -37.01, 2, 0)
	MovementLoopAddLocation(NPC, 702.49, -21.08, -50.58, 2, 0)
	MovementLoopAddLocation(NPC, 702.74, -21.08, -51.25, 2, 15)
	MovementLoopAddLocation(NPC, 703.11, -21.08, -51.48, 2, 0)
	MovementLoopAddLocation(NPC, 709.19, -20.86, -67.17, 2, 0)
	MovementLoopAddLocation(NPC, 702.69, -21.04, -76.81, 2, 0)
	MovementLoopAddLocation(NPC, 693.42, -21.11, -86.66, 2, 15)
	MovementLoopAddLocation(NPC, 692.39, -21.07, -86.63, 2, 0)
end


 function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2210361)
    UseWidget(door)
end  