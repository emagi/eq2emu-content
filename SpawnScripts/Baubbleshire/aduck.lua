--[[
    Script Name    : SpawnScripts/Baubbleshire/aduck.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.24 01:08:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133774180 then
	MovementLoopAddLocation(NPC, 868.2, -20.45, -430.89, 1, 0)
	MovementLoopAddLocation(NPC, 868.39, -20.26, -429.82, 1, 45)
	MovementLoopAddLocation(NPC, 870.85, -18.85, -433.75, 1, 0)
	MovementLoopAddLocation(NPC, 869.87, -18.73, -434.56, 1, 0)
	MovementLoopAddLocation(NPC, 867.95, -18.69, -434.91, 1, 0)
	MovementLoopAddLocation(NPC, 865.14, -18.71, -434.61, 1, 0)
	MovementLoopAddLocation(NPC, 864.14, -18.74, -434.79, 1, 15)
	MovementLoopAddLocation(NPC, 860.44, -18.95, -437.2, 1, 0)
	MovementLoopAddLocation(NPC, 858.21, -18.82, -442.01, 1, 0)
	MovementLoopAddLocation(NPC, 858.19, -18.77, -442.47, 1, 0)
	MovementLoopAddLocation(NPC, 857.89, -18.82, -443.74, 1, 15)
	MovementLoopAddLocation(NPC, 865.21, -19.12, -450.8, 1, 0)
	MovementLoopAddLocation(NPC, 866.74, -19.31, -451.28, 1, 0)
	MovementLoopAddLocation(NPC, 867.64, -19.35, -451.23, 1, 0)
	MovementLoopAddLocation(NPC, 868.99, -19.41, -451.16, 1, 15)
	MovementLoopAddLocation(NPC, 871.65, -19.4, -449.87, 1, 0)
	MovementLoopAddLocation(NPC, 873.24, -19.31, -450.22, 1, 0)
	MovementLoopAddLocation(NPC, 875.82, -19.14, -451.15, 1, 0)
	MovementLoopAddLocation(NPC, 879.56, -19.19, -452.67, 1, 0)
	MovementLoopAddLocation(NPC, 883.84, -19.45, -455.99, 1, 15)
	MovementLoopAddLocation(NPC, 886.55, -19.37, -457.96, 1, 0)
	MovementLoopAddLocation(NPC, 887.84, -19.45, -460.65, 1, 0)
	MovementLoopAddLocation(NPC, 884.12, -19.56, -464.52, 1, 0)
	MovementLoopAddLocation(NPC, 882.91, -19.6, -465.4, 1, 15)
	MovementLoopAddLocation(NPC, 881.69, -19.41, -468.03, 1, 0)
	MovementLoopAddLocation(NPC, 880.95, -19.32, -471.28, 1, 0)
	MovementLoopAddLocation(NPC, 880.3, -19.34, -474.6, 1, 0)
	MovementLoopAddLocation(NPC, 880.31, -19.26, -476.5, 1, 0)
	MovementLoopAddLocation(NPC, 881.44, -18.9, -480.5, 1, 0)
	MovementLoopAddLocation(NPC, 883.93, -18.39, -483.83, 1, 0)
	MovementLoopAddLocation(NPC, 888.32, -18.09, -485.38, 1, 0)
	MovementLoopAddLocation(NPC, 888.42, -18.05, -484.18, 1, 15)
	MovementLoopAddLocation(NPC, 886.89, -18.2, -483.55, 1, 0)
	MovementLoopAddLocation(NPC, 884.5, -18.41, -481.56, 1, 0)
	MovementLoopAddLocation(NPC, 884.71, -18.41, -480.22, 1, 0)
	MovementLoopAddLocation(NPC, 885.68, -18.47, -475.95, 1, 0)
	MovementLoopAddLocation(NPC, 888.1, -18.72, -469.69, 1, 0)
	MovementLoopAddLocation(NPC, 890.48, -18.71, -467.52, 1, 0)
	MovementLoopAddLocation(NPC, 890.94, -18.76, -466.45, 1, 15)
	MovementLoopAddLocation(NPC, 888.52, -19.3, -460.9, 1, 0)
	MovementLoopAddLocation(NPC, 886.66, -19.4, -458.26, 1, 0)
	MovementLoopAddLocation(NPC, 882.79, -19.41, -455.13, 1, 0)
	MovementLoopAddLocation(NPC, 879.97, -19.27, -453.07, 1, 0)
	MovementLoopAddLocation(NPC, 877.18, -19.07, -451.89, 1, 0)
	MovementLoopAddLocation(NPC, 874.88, -19.24, -450.82, 1, 0)
	MovementLoopAddLocation(NPC, 873.15, -19.3, -450.15, 1, 15)
	MovementLoopAddLocation(NPC, 871.45, -19.34, -449.63, 1, 0)
	MovementLoopAddLocation(NPC, 869.19, -18.93, -446.91, 1, 0)
	MovementLoopAddLocation(NPC, 866.79, -18.64, -444.2, 1, 0)
	MovementLoopAddLocation(NPC, 865.05, -18.3, -442.09, 1, 0)
	MovementLoopAddLocation(NPC, 865.45, -18.25, -441.06, 1, 15)
	MovementLoopAddLocation(NPC, 867.42, -18.32, -440.2, 1, 0)
	MovementLoopAddLocation(NPC, 869.13, -18.4, -439.45, 1, 0)
	MovementLoopAddLocation(NPC, 870.74, -18.48, -435.71, 1, 0)
	MovementLoopAddLocation(NPC, 871.1, -18.6, -434.87, 1, 0)
	MovementLoopAddLocation(NPC, 870.71, -19.94, -431.91, 1, 0)
    elseif GetSpawnLocationID(NPC)==412678 then
	
	MovementLoopAddLocation(NPC, 868.2, -20.45, -430.89, 1, 45)
	MovementLoopAddLocation(NPC, 868.39, -20.26, -429.82, 1, 0)
	MovementLoopAddLocation(NPC, 870.85, -18.85, -433.75, 1, 0)
	MovementLoopAddLocation(NPC, 869.87, -18.73, -434.56, 1, 0)
	MovementLoopAddLocation(NPC, 867.95, -18.69, -434.91, 1, 0)
	MovementLoopAddLocation(NPC, 865.14, -18.71, -434.61, 1, 15)
	MovementLoopAddLocation(NPC, 864.14, -18.74, -434.79, 1, 0)
	MovementLoopAddLocation(NPC, 860.44, -18.95, -437.2, 1, 0)
	MovementLoopAddLocation(NPC, 858.21, -18.82, -442.01, 1, 0)
	MovementLoopAddLocation(NPC, 858.19, -18.77, -442.47, 1, 15)
	MovementLoopAddLocation(NPC, 857.89, -18.82, -443.74, 1, 0)
	MovementLoopAddLocation(NPC, 865.21, -19.12, -450.8, 1, 0)
	MovementLoopAddLocation(NPC, 866.74, -19.31, -451.28, 1, 0)
	MovementLoopAddLocation(NPC, 867.64, -19.35, -451.23, 1, 15)
	MovementLoopAddLocation(NPC, 868.99, -19.41, -451.16, 1, 0)
	MovementLoopAddLocation(NPC, 871.65, -19.4, -449.87, 1, 0)
	MovementLoopAddLocation(NPC, 873.24, -19.31, -450.22, 1, 0)
	MovementLoopAddLocation(NPC, 875.82, -19.14, -451.15, 1, 0)
	MovementLoopAddLocation(NPC, 879.56, -19.19, -452.67, 1, 15)
	MovementLoopAddLocation(NPC, 883.84, -19.45, -455.99, 1, 0)
	MovementLoopAddLocation(NPC, 886.55, -19.37, -457.96, 1, 0)
	MovementLoopAddLocation(NPC, 887.84, -19.45, -460.65, 1, 0)
	MovementLoopAddLocation(NPC, 884.12, -19.56, -464.52, 1, 15)
	MovementLoopAddLocation(NPC, 882.91, -19.6, -465.4, 1, 0)
	MovementLoopAddLocation(NPC, 881.69, -19.41, -468.03, 1, 0)
	MovementLoopAddLocation(NPC, 880.95, -19.32, -471.28, 1, 0)
	MovementLoopAddLocation(NPC, 880.3, -19.34, -474.6, 1, 0)
	MovementLoopAddLocation(NPC, 880.31, -19.26, -476.5, 1, 0)
	MovementLoopAddLocation(NPC, 881.44, -18.9, -480.5, 1, 0)
	MovementLoopAddLocation(NPC, 883.93, -18.39, -483.83, 1, 0)
	MovementLoopAddLocation(NPC, 888.32, -18.09, -485.38, 1, 15)
	MovementLoopAddLocation(NPC, 888.42, -18.05, -484.18, 1, 0)
	MovementLoopAddLocation(NPC, 886.89, -18.2, -483.55, 1, 0)
	MovementLoopAddLocation(NPC, 884.5, -18.41, -481.56, 1, 0)
	MovementLoopAddLocation(NPC, 884.71, -18.41, -480.22, 1, 0)
	MovementLoopAddLocation(NPC, 885.68, -18.47, -475.95, 1, 0)
	MovementLoopAddLocation(NPC, 888.1, -18.72, -469.69, 1, 0)
	MovementLoopAddLocation(NPC, 890.48, -18.71, -467.52, 1, 15)
	MovementLoopAddLocation(NPC, 890.94, -18.76, -466.45, 1, 0)
	MovementLoopAddLocation(NPC, 888.52, -19.3, -460.9, 1, 0)
	MovementLoopAddLocation(NPC, 886.66, -19.4, -458.26, 1, 0)
	MovementLoopAddLocation(NPC, 882.79, -19.41, -455.13, 1, 0)
	MovementLoopAddLocation(NPC, 879.97, -19.27, -453.07, 1, 0)
	MovementLoopAddLocation(NPC, 877.18, -19.07, -451.89, 1, 0)
	MovementLoopAddLocation(NPC, 874.88, -19.24, -450.82, 1, 15)
	MovementLoopAddLocation(NPC, 873.15, -19.3, -450.15, 1, 0)
	MovementLoopAddLocation(NPC, 871.45, -19.34, -449.63, 1, 0)
	MovementLoopAddLocation(NPC, 869.19, -18.93, -446.91, 1, 0)
	MovementLoopAddLocation(NPC, 866.79, -18.64, -444.2, 1, 0)
	MovementLoopAddLocation(NPC, 865.05, -18.3, -442.09, 1, 15)
	MovementLoopAddLocation(NPC, 865.45, -18.25, -441.06, 1, 0)
	MovementLoopAddLocation(NPC, 867.42, -18.32, -440.2, 1, 0)
	MovementLoopAddLocation(NPC, 869.13, -18.4, -439.45, 1, 0)
	MovementLoopAddLocation(NPC, 870.74, -18.48, -435.71, 1, 0)
	MovementLoopAddLocation(NPC, 871.1, -18.6, -434.87, 1, 0)
	MovementLoopAddLocation(NPC, 870.71, -19.94, -431.91, 1, 0)

    elseif GetSpawnLocationID(NPC)==412657 then
	
	MovementLoopAddLocation(NPC, 882.28, -16.37, -516.27, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 883.52, -16.4, -514.86, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 883.24, -16.48, -513.86, 1, 0)
	MovementLoopAddLocation(NPC, 882.47, -16.83, -509.85, 1, 0)
	MovementLoopAddLocation(NPC, 883.8, -16.6, -505.79, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 883.91, -16.61, -505.59, 1, 0)
	MovementLoopAddLocation(NPC, 884.56, -16.67, -505.34, 1, 0)
	MovementLoopAddLocation(NPC, 886.26, -16.73, -505.18, 1, 0)
	MovementLoopAddLocation(NPC, 888.55, -16.93, -503.36, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 887.38, -16.72, -505.17, 1, 0)
	MovementLoopAddLocation(NPC, 881.26, -17.02, -506.7, 1, 0)
	MovementLoopAddLocation(NPC, 875.04, -17.51, -509.33, 1, 0)
	MovementLoopAddLocation(NPC, 871.47, -17.46, -512.69, 1, 0)
	MovementLoopAddLocation(NPC, 870.68, -17.79, -512.3, 1, 0)
	MovementLoopAddLocation(NPC, 870.17, -19.93, -508.81, 1, math.random(20,32))
	MovementLoopAddLocation(NPC, 870.4, -19.99, -508.54, 1, 0)
	MovementLoopAddLocation(NPC, 870.77, -19.33, -509.6, 1, 0)
	MovementLoopAddLocation(NPC, 870.6, -18.11, -511.72, 1, 0)
	MovementLoopAddLocation(NPC, 869.42, -17.47, -513.65, 1, 0)
	MovementLoopAddLocation(NPC, 866.46, -17.83, -512.75, 1, 0)
	MovementLoopAddLocation(NPC, 864.69, -17.97, -510.82, 1, 0)
	MovementLoopAddLocation(NPC, 865.48, -17.97, -506.54, 1, 0)
	MovementLoopAddLocation(NPC, 864.89, -17.97, -504.71, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 864.54, -17.97, -503.85, 1, 0)
	MovementLoopAddLocation(NPC, 861.88, -17.97, -502.29, 1, 0)
	MovementLoopAddLocation(NPC, 860.47, -17.97, -501.63, 1, 0)
	MovementLoopAddLocation(NPC, 857.66, -17.97, -500.94, 1, 0)
	MovementLoopAddLocation(NPC, 856.59, -17.97, -500.7, 1, 0)
	MovementLoopAddLocation(NPC, 856.59, -17.97, -500.7, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 856.59, -17.97, -500.7, 1, 0)
	MovementLoopAddLocation(NPC, 855.89, -17.97, -501.5, 1, 0)
	MovementLoopAddLocation(NPC, 855.01, -17.97, -502.74, 1, 0)
	MovementLoopAddLocation(NPC, 854.53, -17.97, -503.42, 1, 0)
	MovementLoopAddLocation(NPC, 853.5, -18.25, -503.28, 1, 0)
	MovementLoopAddLocation(NPC, 852.14, -18.38, -501.76, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 851.94, -18.41, -501.47, 1, 0)
	MovementLoopAddLocation(NPC, 851.18, -18.38, -501.93, 1, 0)
	MovementLoopAddLocation(NPC, 850.28, -18.39, -502.02, 1, 0)
	MovementLoopAddLocation(NPC, 849.04, -18.47, -501.33, 1, 0)
	MovementLoopAddLocation(NPC, 848.38, -18.68, -500.18, 1, 0)
	MovementLoopAddLocation(NPC, 843.58, -18.89, -499.56, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 842.45, -18.84, -500.03, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 839.8, -18.65, -501.77, 1, 0)
	MovementLoopAddLocation(NPC, 836.82, -18.39, -503.73, 1, 0)
	MovementLoopAddLocation(NPC, 835.01, -18.49, -503.77, 1, 0)
	MovementLoopAddLocation(NPC, 833.45, -18.66, -503.1, 1, 0)
	MovementLoopAddLocation(NPC, 833.74, -19.71, -501.7, 1, math.random(20,32))
	MovementLoopAddLocation(NPC, 834.08, -19.96, -501.65, 1, 0)
	MovementLoopAddLocation(NPC, 833.72, -18.59, -503.27, 1, 0)
	MovementLoopAddLocation(NPC, 834.4, -18.4, -504.17, 1, 0)
	MovementLoopAddLocation(NPC, 838.98, -18.6, -502.2, 1, 0)
	MovementLoopAddLocation(NPC, 843.8, -18.83, -499.89, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 846.5, -18.73, -500.15, 1, 0)
	MovementLoopAddLocation(NPC, 850.25, -18.15, -506.13, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 851.11, -18.15, -505.37, 1, 0)
	MovementLoopAddLocation(NPC, 853.62, -17.97, -505.84, 1, 0)
	MovementLoopAddLocation(NPC, 855.58, -17.97, -503.48, 1, 0)
	MovementLoopAddLocation(NPC, 856.89, -17.97, -503.43, 1, 0)
	MovementLoopAddLocation(NPC, 858.67, -17.97, -503.97, 1, 0)
	MovementLoopAddLocation(NPC, 860.76, -17.97, -501.66, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 863.01, -17.97, -504.34, 1, 0)
	MovementLoopAddLocation(NPC, 863.96, -17.97, -505.53, 1, 0)
	MovementLoopAddLocation(NPC, 866.65, -17.97, -508.03, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 866.3, -17.97, -509.2, 1, 0)
	MovementLoopAddLocation(NPC, 865.19, -17.97, -510.42, 1, 0)
	MovementLoopAddLocation(NPC, 866.03, -17.89, -511.78, 1, 0)
	MovementLoopAddLocation(NPC, 867.4, -17.69, -512.26, 1, math.random(10,20))
	MovementLoopAddLocation(NPC, 872.11, -17.21, -513.18, 1, 0)
	MovementLoopAddLocation(NPC, 880.16, -16.68, -514.21, 1, math.random(10,20))
end
end