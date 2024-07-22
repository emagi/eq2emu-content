--[[
	Script Name		:	charlene.lua
	Script Purpose	:	Waypoint Path for charlene.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 04:14:49 PM
	Script Notes	:	Locations collected from Live
--]]
local AttackTimer = false

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC,4, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if AttackTimer == false then
if math.random(1,100) <=20 then
    AttackTimer = true    
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
    AddTimer(NPC,25000,"AttackTimerReset")
    end
end
end

function AttackTimerReset(NPC,Spawn)
AttackTimer = false
end

function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
    AttackTimer = true
elseif choice ==2 then
end
end

function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
AttackTimer = false
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 843.09, -23.1, 43.01, 1, 0)
	MovementLoopAddLocation(NPC, 859.64, -25.37, 41.02, 1, 0)
	MovementLoopAddLocation(NPC, 862.33, -25.37, 41.42, 1, 0)
	MovementLoopAddLocation(NPC, 872.29, -25.47, 35.52, 1, 0)
	MovementLoopAddLocation(NPC, 884.06, -25.43, 36.04, 1, 0)
	MovementLoopAddLocation(NPC, 887.55, -25.49, 35.77, 1, 1)
	MovementLoopAddLocation(NPC, 887.55, -25.49, 35.77, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 889.92, -25.5, 34.97, 1, 0)
	MovementLoopAddLocation(NPC, 890.46, -25.52, 33.48, 1, 0)
	MovementLoopAddLocation(NPC, 890.88, -25.48, 29.76, 1, 0)
	MovementLoopAddLocation(NPC, 891.77, -25.47, 25.67, 1, 0)
	MovementLoopAddLocation(NPC, 892.57, -25.46, 22.76, 1, 0)
	MovementLoopAddLocation(NPC, 894.46, -25.5, 21.1, 1, 0)
	MovementLoopAddLocation(NPC, 897.19, -25.5, 14.84, 1, 0)
	MovementLoopAddLocation(NPC, 895.5, -25.46, 10.9, 1, 1)
	MovementLoopAddLocation(NPC, 895.5, -25.46, 10.9, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 896.6, -25.49, 9.69, 1, 0)
	MovementLoopAddLocation(NPC, 898.08, -25.52, -7.37, 1, 0)
	MovementLoopAddLocation(NPC, 897.92, -25.48, -15.99, 1, 0)
	MovementLoopAddLocation(NPC, 895.84, -25.03, -26.93, 1, 0)
	MovementLoopAddLocation(NPC, 893.61, -23.47, -35.29, 1, 0)
	MovementLoopAddLocation(NPC, 890.81, -24.39, -44.26, 1, 0)
	MovementLoopAddLocation(NPC, 889.69, -25.4, -47.84, 1, 0)
	MovementLoopAddLocation(NPC, 885.27, -25.49, -49.45, 1, 0)
	MovementLoopAddLocation(NPC, 880.89, -25.34, -51.26, 1,  1)
	MovementLoopAddLocation(NPC, 880.89, -25.34, -51.26, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 881.27, -25.41, -45.69, 1, 0)
	MovementLoopAddLocation(NPC, 876.44, -25.47, -41.69, 1,  1)
	MovementLoopAddLocation(NPC, 876.44, -25.47, -41.69, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 880.28, -25.36, -46.63, 1, 0)
	MovementLoopAddLocation(NPC, 882.03, -25.47, -54.25, 1, 0)
	MovementLoopAddLocation(NPC, 889.08, -25.41, -48.15, 1, 0)
	MovementLoopAddLocation(NPC, 890.52, -23.42, -43.04, 1, 0)
	MovementLoopAddLocation(NPC, 892.3, -23.38, -37.89, 1, 0)
	MovementLoopAddLocation(NPC, 896.96, -25.43, -25.89, 1, 0)
	MovementLoopAddLocation(NPC, 896.63, -25.48, -19.45, 1, 0)
	MovementLoopAddLocation(NPC, 897.61, -25.59, -15.51, 1, 0)
	MovementLoopAddLocation(NPC, 897.61, -25.56, -10.09, 1, 0)
	MovementLoopAddLocation(NPC, 898.14, -25.51, 3.37, 1, 0)
	MovementLoopAddLocation(NPC, 891.31, -25.43, 15.27, 1, 0)
	MovementLoopAddLocation(NPC, 888.31, -25.43, 19.01, 1,  1)
	MovementLoopAddLocation(NPC, 888.31, -25.43, 19.01, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 883.59, -25.43, 22.39, 1, 0)
	MovementLoopAddLocation(NPC, 877.02, -25.43, 27.96, 1, 0)
	MovementLoopAddLocation(NPC, 875.77, -25.43, 32.37, 1, 0)
	MovementLoopAddLocation(NPC, 860.37, -25.52, 34.96, 1, 0)
	MovementLoopAddLocation(NPC, 857.88, -25.49, 30.76, 1, 0)
	MovementLoopAddLocation(NPC, 856.05, -24.47, 25.61, 1, 0)
	MovementLoopAddLocation(NPC, 855.55, -24.47, 23.98, 1, 0)
	MovementLoopAddLocation(NPC, 845.16, -24.47, 15.11, 1, 0)
	MovementLoopAddLocation(NPC, 837.08, -24.47, -0.46, 1, 0)
	MovementLoopAddLocation(NPC, 834.9, -24.47, -2.49, 1, 0)
	MovementLoopAddLocation(NPC, 833.95, -24.47, -3.12, 1, 0)
	MovementLoopAddLocation(NPC, 820.53, -24.47, -5.88, 1,  1)
	MovementLoopAddLocation(NPC, 820.53, -24.47, -5.88, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 818.39, -24.47, -7.17, 1, 0)
	MovementLoopAddLocation(NPC, 817.87, -24.47, -8.18, 1, 0)
	MovementLoopAddLocation(NPC, 819.33, -25.46, -11.15, 1, 0)
	MovementLoopAddLocation(NPC, 822.7, -25.44, -14.09, 1, 0)
	MovementLoopAddLocation(NPC, 831.03, -25.46, -6.84, 1, 0)
	MovementLoopAddLocation(NPC, 843.03, -25.44, 1.76, 1,  1)
	MovementLoopAddLocation(NPC, 843.03, -25.44, 1.76, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 846.42, -25.45, 9.26, 1, 0)
	MovementLoopAddLocation(NPC, 853.84, -25.47, 19.35, 1, 0)
	MovementLoopAddLocation(NPC, 858.82, -25.5, 33.39, 1, 0)
	MovementLoopAddLocation(NPC, 857.67, -25.38, 38.69, 1, 0)
	MovementLoopAddLocation(NPC, 849.46, -23.18, 39.21, 1, 0)
	MovementLoopAddLocation(NPC, 838.45, -23.17, 40.93, 1, 0)
	MovementLoopAddLocation(NPC, 827.05, -23.35, 39.54, 1,  1)
	MovementLoopAddLocation(NPC, 827.05, -23.35, 39.54, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 834, -23.48, 58.39, 1, 0)
	MovementLoopAddLocation(NPC, 834.57, -22.27, 59.53, 1, 0)
	MovementLoopAddLocation(NPC, 829.31, -22.27, 69.74, 1, 0)
	MovementLoopAddLocation(NPC, 823.44, -22.27, 80.39, 1,  1)
	MovementLoopAddLocation(NPC, 823.44, -22.27, 80.39, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 823.46, -22.27, 100.69, 1, 0)
	MovementLoopAddLocation(NPC, 826.94, -22.27, 104.93, 1, 0)
	MovementLoopAddLocation(NPC, 838.71, -22.27, 115.93, 1,  1)
	MovementLoopAddLocation(NPC, 838.71, -22.27, 115.93, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 837.64, -23.33, 116.66, 1, 0)
	MovementLoopAddLocation(NPC, 830.04, -23.36, 110.35, 1, 0)
	MovementLoopAddLocation(NPC, 824.74, -23.36, 109.6, 1, 0)
	MovementLoopAddLocation(NPC, 818.41, -23.34, 109.73, 1, 0)
	MovementLoopAddLocation(NPC, 813.52, -23.32, 102.01, 1, 0)
	MovementLoopAddLocation(NPC, 814.9, -23.31, 79.33, 1, 0)
	MovementLoopAddLocation(NPC, 830.26, -23.32, 46.09, 1, 0)
	MovementLoopAddLocation(NPC, 831.4, -23.39, 38.4, 1, 0)
	MovementLoopAddLocation(NPC, 831.64, -23.38, 36.38, 1, 0)
	MovementLoopAddLocation(NPC, 836.3, -23.5, 35.06, 1,  1)
	MovementLoopAddLocation(NPC, 836.3, -23.5, 35.06, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 831.49, -23.39, 36.75, 1, 0)
	MovementLoopAddLocation(NPC, 828.18, -23.38, 40.93, 1, 0)
	MovementLoopAddLocation(NPC, 823.45, -23.31, 39.61, 1, 0)
	MovementLoopAddLocation(NPC, 810.96, -23.26, 30.27, 1, 0)
	MovementLoopAddLocation(NPC, 807.32, -23.36, 29.52, 1, 0)
	MovementLoopAddLocation(NPC, 786.21, -23.11, 64.43, 1, 0)
	MovementLoopAddLocation(NPC, 782.04, -23.31, 71.94, 1, 0)
	MovementLoopAddLocation(NPC, 792.67, -23.26, 76.85, 1, 0)
	MovementLoopAddLocation(NPC, 803.7, -23.23, 83.51, 1,  1)
	MovementLoopAddLocation(NPC, 803.7, -23.23, 83.51, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 812.62, -23.34, 82.85, 1, 0)
	MovementLoopAddLocation(NPC, 828.2, -23.31, 53.52, 1, 0)
	MovementLoopAddLocation(NPC, 837.51, -23.45, 48.71, 1,  1)
	MovementLoopAddLocation(NPC, 837.51, -23.45, 48.71, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 834.29, -23.31, 47.74, 1, 0)
	MovementLoopAddLocation(NPC, 835.81, -23.31, 45.05, 1, 0)
	MovementLoopAddLocation(NPC, 834.29, -23.31, 47.74, 1, 0)
	MovementLoopAddLocation(NPC, 837.51, -23.45, 48.71, 1,  1)
	MovementLoopAddLocation(NPC, 837.51, -23.45, 48.71, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 828.2, -23.31, 53.52, 1, 0)
	MovementLoopAddLocation(NPC, 812.62, -23.34, 82.85, 1, 0)
	MovementLoopAddLocation(NPC, 803.7, -23.23, 83.51, 1,  1)
	MovementLoopAddLocation(NPC, 803.7, -23.23, 83.51, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 792.67, -23.26, 76.85, 1, 0)
	MovementLoopAddLocation(NPC, 782.04, -23.31, 71.94, 1, 0)
	MovementLoopAddLocation(NPC, 786.21, -23.11, 64.43, 1, 0)
	MovementLoopAddLocation(NPC, 807.32, -23.36, 29.52, 1, 0)
	MovementLoopAddLocation(NPC, 810.96, -23.26, 30.27, 1, 0)
	MovementLoopAddLocation(NPC, 823.45, -23.31, 39.61, 1, 0)
	MovementLoopAddLocation(NPC, 828.18, -23.38, 40.93, 1, 0)
	MovementLoopAddLocation(NPC, 831.49, -23.39, 36.75, 1, 0)
	MovementLoopAddLocation(NPC, 836.3, -23.5, 35.06, 1,  1)
	MovementLoopAddLocation(NPC, 836.3, -23.5, 35.06, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 831.64, -23.38, 36.38, 1, 0)
	MovementLoopAddLocation(NPC, 831.4, -23.39, 38.4, 1, 0)
	MovementLoopAddLocation(NPC, 830.26, -23.32, 46.09, 1, 0)
	MovementLoopAddLocation(NPC, 814.9, -23.31, 79.33, 1, 0)
	MovementLoopAddLocation(NPC, 813.52, -23.32, 102.01, 1, 0)
	MovementLoopAddLocation(NPC, 818.41, -23.34, 109.73, 1, 0)
	MovementLoopAddLocation(NPC, 824.74, -23.36, 109.6, 1, 0)
	MovementLoopAddLocation(NPC, 830.04, -23.36, 110.35, 1, 0)
	MovementLoopAddLocation(NPC, 837.64, -23.33, 116.66, 1, 0)
	MovementLoopAddLocation(NPC, 838.71, -22.27, 115.93, 1,  1)
	MovementLoopAddLocation(NPC, 838.71, -22.27, 115.93, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 826.94, -22.27, 104.93, 1, 0)
	MovementLoopAddLocation(NPC, 823.46, -22.27, 100.69, 1, 0)
	MovementLoopAddLocation(NPC, 823.44, -22.27, 80.39, 1,  1)
	MovementLoopAddLocation(NPC, 823.44, -22.27, 80.39, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 829.31, -22.27, 69.74, 1, 0)
	MovementLoopAddLocation(NPC, 834.57, -22.27, 59.53, 1, 0)
	MovementLoopAddLocation(NPC, 834, -23.48, 58.39, 1, 0)
	MovementLoopAddLocation(NPC, 827.05, -23.35, 39.54, 1,  1)
	MovementLoopAddLocation(NPC, 827.05, -23.35, 39.54, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 838.45, -23.17, 40.93, 1, 0)
	MovementLoopAddLocation(NPC, 849.46, -23.18, 39.21, 1, 0)
	MovementLoopAddLocation(NPC, 857.67, -25.38, 38.69, 1, 0)
	MovementLoopAddLocation(NPC, 858.82, -25.5, 33.39, 1, 0)
	MovementLoopAddLocation(NPC, 853.84, -25.47, 19.35, 1, 0)
	MovementLoopAddLocation(NPC, 846.42, -25.45, 9.26, 1, 0)
	MovementLoopAddLocation(NPC, 843.03, -25.44, 1.76, 1,  1)
	MovementLoopAddLocation(NPC, 843.03, -25.44, 1.76, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 831.03, -25.46, -6.84, 1, 0)
	MovementLoopAddLocation(NPC, 822.7, -25.44, -14.09, 1, 0)
	MovementLoopAddLocation(NPC, 819.33, -25.46, -11.15, 1, 0)
	MovementLoopAddLocation(NPC, 817.87, -24.47, -8.18, 1, 0)
	MovementLoopAddLocation(NPC, 818.39, -24.47, -7.17, 1, 0)
	MovementLoopAddLocation(NPC, 820.53, -24.47, -5.88, 1,  1)
	MovementLoopAddLocation(NPC, 820.53, -24.47, -5.88, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 833.95, -24.47, -3.12, 1, 0)
	MovementLoopAddLocation(NPC, 834.9, -24.47, -2.49, 1, 0)
	MovementLoopAddLocation(NPC, 837.08, -24.47, -0.46, 1, 0)
	MovementLoopAddLocation(NPC, 845.16, -24.47, 15.11, 1, 0)
	MovementLoopAddLocation(NPC, 855.55, -24.47, 23.98, 1, 0)
	MovementLoopAddLocation(NPC, 856.05, -24.47, 25.61, 1, 0)
	MovementLoopAddLocation(NPC, 857.88, -25.49, 30.76, 1, 0)
	MovementLoopAddLocation(NPC, 860.37, -25.52, 34.96, 1, 0)
	MovementLoopAddLocation(NPC, 875.77, -25.43, 32.37, 1, 0)
	MovementLoopAddLocation(NPC, 877.02, -25.43, 27.96, 1, 0)
	MovementLoopAddLocation(NPC, 883.59, -25.43, 22.39, 1, 0)
	MovementLoopAddLocation(NPC, 888.31, -25.43, 19.01, 1,  1)
	MovementLoopAddLocation(NPC, 888.31, -25.43, 19.01, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 891.31, -25.43, 15.27, 1, 0)
	MovementLoopAddLocation(NPC, 898.14, -25.51, 3.37, 1, 0)
	MovementLoopAddLocation(NPC, 897.61, -25.56, -10.09, 1, 0)
	MovementLoopAddLocation(NPC, 897.61, -25.59, -15.51, 1, 0)
	MovementLoopAddLocation(NPC, 896.63, -25.48, -19.45, 1, 0)
	MovementLoopAddLocation(NPC, 896.96, -25.43, -25.89, 1, 0)
	MovementLoopAddLocation(NPC, 892.3, -23.38, -37.89, 1, 0)
	MovementLoopAddLocation(NPC, 890.52, -23.42, -43.04, 1, 0)
	MovementLoopAddLocation(NPC, 889.08, -25.41, -48.15, 1, 0)
	MovementLoopAddLocation(NPC, 882.03, -25.47, -54.25, 1, 0)
	MovementLoopAddLocation(NPC, 880.28, -25.36, -46.63, 1, 0)
	MovementLoopAddLocation(NPC, 876.44, -25.47, -41.69, 1,  1)
	MovementLoopAddLocation(NPC, 876.44, -25.47, -41.69, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 881.27, -25.41, -45.69, 1, 0)
	MovementLoopAddLocation(NPC, 880.89, -25.34, -51.26, 1,  1)
	MovementLoopAddLocation(NPC, 880.89, -25.34, -51.26, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 885.27, -25.49, -49.45, 1, 0)
	MovementLoopAddLocation(NPC, 889.69, -25.4, -47.84, 1, 0)
	MovementLoopAddLocation(NPC, 890.81, -24.39, -44.26, 1, 0)
	MovementLoopAddLocation(NPC, 893.61, -23.47, -35.29, 1, 0)
	MovementLoopAddLocation(NPC, 895.84, -25.03, -26.93, 1, 0)
	MovementLoopAddLocation(NPC, 897.92, -25.48, -15.99, 1, 0)
	MovementLoopAddLocation(NPC, 898.08, -25.52, -7.37, 1, 0)
	MovementLoopAddLocation(NPC, 896.6, -25.49, 9.69, 1, 0)
	MovementLoopAddLocation(NPC, 895.5, -25.46, 10.9, 1,  1)
	MovementLoopAddLocation(NPC, 895.5, -25.46, 10.9, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 897.19, -25.5, 14.84, 1, 0)
	MovementLoopAddLocation(NPC, 894.46, -25.5, 21.1, 1, 0)
	MovementLoopAddLocation(NPC, 892.57, -25.46, 22.76, 1, 0)
	MovementLoopAddLocation(NPC, 891.77, -25.47, 25.67, 1, 0)
	MovementLoopAddLocation(NPC, 890.88, -25.48, 29.76, 1, 0)
	MovementLoopAddLocation(NPC, 890.46, -25.52, 33.48, 1, 0)
	MovementLoopAddLocation(NPC, 889.92, -25.5, 34.97, 1, 0)
	MovementLoopAddLocation(NPC, 887.55, -25.49, 35.77, 1, 1)
	MovementLoopAddLocation(NPC, 887.55, -25.49, 35.77, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 884.06, -25.43, 36.04, 1, 0)
	MovementLoopAddLocation(NPC, 872.29, -25.47, 35.52, 1, 0)
	MovementLoopAddLocation(NPC, 862.33, -25.37, 41.42, 1, 0)
	MovementLoopAddLocation(NPC, 859.64, -25.37, 41.02, 1, 0)
	MovementLoopAddLocation(NPC, 843.09, -23.1, 43.01, 1, 0)
end


--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 832.06, -23.31, 45.72, 1, 0)
	MovementLoopAddLocation(NPC, 879.32, -25.43, 35.83, 1, 0)
	MovementLoopAddLocation(NPC, 903.88, -25.37, 13.02, 1, 0)
	MovementLoopAddLocation(NPC, 932.38, -25.55, 26.75, 1, 0)
	MovementLoopAddLocation(NPC, 948.25, -25.5, 32.06, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 962.44, -25.47, 16.52, 1, 0)
	MovementLoopAddLocation(NPC, 978.08, -25.01, 15.7, 1, 0)
	MovementLoopAddLocation(NPC, 994.13, -25.12, 16.11, 1, 0)
	MovementLoopAddLocation(NPC, 1000.46, -25.82, 26.08, 1, 0)
	MovementLoopAddLocation(NPC, 995.28, -25.11, 14.52, 1, 0)
	MovementLoopAddLocation(NPC, 964.46, -25.46, 14.05, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 948.82, -25.5, 30.55, 1, 0)
	MovementLoopAddLocation(NPC, 907.29, -25.46, 14.26, 1, 0)
	MovementLoopAddLocation(NPC, 909, -25.41, -1.48, 1, 0)
	MovementLoopAddLocation(NPC, 891.19, -25.49, -26.78, 1, 0)
	MovementLoopAddLocation(NPC, 893.37, -25.52, -23.76, 1, 0)
	MovementLoopAddLocation(NPC, 906.58, -25.41, -25.59, 1, 0)
	MovementLoopAddLocation(NPC, 899.27, -25.41, -49.86, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 862.97, -25.42, -68.34, 1, 0)
	MovementLoopAddLocation(NPC, 864.82, -25.44, -86.64, 1, 0)
	MovementLoopAddLocation(NPC, 855.5, -25.48, -69.74, 1, 0)
	MovementLoopAddLocation(NPC, 813.77, -20.86, -65.23, 1, 0)
	MovementLoopAddLocation(NPC, 746.74, -21.28, -21.97, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 722.98, -21.38, -36.4, 1, 0)
	MovementLoopAddLocation(NPC, 696.28, -20.64, -66.63, 1, 0)
	MovementLoopAddLocation(NPC, 720.45, -20.86, -115.5, 1, 0)
	MovementLoopAddLocation(NPC, 696.28, -20.64, -66.63, 1, 0)
	MovementLoopAddLocation(NPC, 722.98, -21.38, -36.4, 1, 0)
	MovementLoopAddLocation(NPC, 746.74, -21.28, -21.97, 1, 0)
	MovementLoopAddLocation(NPC, 813.77, -20.86, -65.23, 1, 0)
	MovementLoopAddLocation(NPC, 855.5, -25.48, -69.74, 1, 0)
	MovementLoopAddLocation(NPC, 864.82, -25.44, -86.64, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 862.97, -25.42, -68.34, 1, 0)
	MovementLoopAddLocation(NPC, 899.27, -25.41, -49.86, 1, 0)
	MovementLoopAddLocation(NPC, 906.58, -25.41, -25.59, 1, 0)
	MovementLoopAddLocation(NPC, 893.37, -25.52, -23.76, 1, 0)
	MovementLoopAddLocation(NPC, 891.19, -25.49, -26.78, 1, 0)
	MovementLoopAddLocation(NPC, 909, -25.41, -1.48, 1, 0)
	MovementLoopAddLocation(NPC, 907.29, -25.46, 14.26, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 948.82, -25.5, 30.55, 1, 0)
	MovementLoopAddLocation(NPC, 964.46, -25.46, 14.05, 1, 0)
	MovementLoopAddLocation(NPC, 995.28, -25.11, 14.52, 1, 0)
	MovementLoopAddLocation(NPC, 1000.46, -25.82, 26.08, 1, 0)
	MovementLoopAddLocation(NPC, 994.13, -25.12, 16.11, 1, 0)
	MovementLoopAddLocation(NPC, 978.08, -25.01, 15.7, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 962.44, -25.47, 16.52, 1, 0)
	MovementLoopAddLocation(NPC, 948.25, -25.5, 32.06, 1, 0)
	MovementLoopAddLocation(NPC, 932.38, -25.55, 26.75, 1, 0)
	MovementLoopAddLocation(NPC, 903.88, -25.37, 13.02, 1, 0)
	MovementLoopAddLocation(NPC, 879.32, -25.43, 35.83, 1, 0)
	MovementLoopAddLocation(NPC, 832.06, -23.31, 45.72, 1, math.random(6,20))
end

--]]
