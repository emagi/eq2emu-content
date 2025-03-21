--[[
    Script Name    : SpawnScripts/Antonica/anenragedwolfHillside4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:22
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
	MovementLoopAddLocation(NPC, -2046.5, -23.41, 330.53, 2, 0)
	MovementLoopAddLocation(NPC, -2043.55, -21.42, 328.73, 2, 0)
	MovementLoopAddLocation(NPC, -2036.8, -16.97, 324.61, 2, 0)
	MovementLoopAddLocation(NPC, -2031.04, -13.56, 321.1, 2, 0)
	MovementLoopAddLocation(NPC, -2025.19, -10.5, 317.54, 2, 0)
	MovementLoopAddLocation(NPC, -2019.68, -7.94, 314.18, 2, 0)
	MovementLoopAddLocation(NPC, -2014.57, -5.6, 311.06, 2, 0)
	MovementLoopAddLocation(NPC, -2013.58, -4.99, 309.43, 2, 0)
	MovementLoopAddLocation(NPC, -2010.77, -3.97, 304.76, 2, 0)
	MovementLoopAddLocation(NPC, -2007.54, -3.08, 299.39, 2, 0)
	MovementLoopAddLocation(NPC, -2003.94, -1.95, 293.42, 2, 0)
	MovementLoopAddLocation(NPC, -2000.36, -0.59, 287.5, 2, 0)
	MovementLoopAddLocation(NPC, -1996.68, 1.26, 281.38, 2, 0)
	MovementLoopAddLocation(NPC, -1995.99, 2.32, 277.78, 2, 0)
	MovementLoopAddLocation(NPC, -1998.78, 3.68, 272, 2, 0)
	MovementLoopAddLocation(NPC, -2001.71, 5.17, 265.89, 2, 0)
	MovementLoopAddLocation(NPC, -2005.53, 7.02, 257.96, 2, 0)
	MovementLoopAddLocation(NPC, -2007.42, 7.39, 254.04, 2, 0)
	MovementLoopAddLocation(NPC, -2010.34, 7.65, 247.96, 2, 0)
	MovementLoopAddLocation(NPC, -2012.66, 7.67, 245.99, 2, 0)
	MovementLoopAddLocation(NPC, -2018.59, 7.44, 244.84, 2, 0)
	MovementLoopAddLocation(NPC, -2024.65, 7.1, 243.67, 2, 0)
	MovementLoopAddLocation(NPC, -2031.25, 7, 242.4, 2, 0)
	MovementLoopAddLocation(NPC, -2033.89, 7.06, 242.96, 2, 0)
	MovementLoopAddLocation(NPC, -2038.5, 7.08, 246.35, 2, 0)
	MovementLoopAddLocation(NPC, -2041.06, 6.55, 248.33, 2, 0)
	MovementLoopAddLocation(NPC, -2045.79, 5.35, 252.18, 2, 0)
	MovementLoopAddLocation(NPC, -2050.94, 3.55, 256.37, 2, 0)
	MovementLoopAddLocation(NPC, -2056.54, 0.61, 260.92, 2, 0)
	MovementLoopAddLocation(NPC, -2059.94, -1.08, 263.68, 2, 0)
	MovementLoopAddLocation(NPC, -2065.01, -3.51, 267.8, 2, 0)
	MovementLoopAddLocation(NPC, -2070.26, -5.27, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, -2075.36, -6.8, 276.22, 2, 0)
	MovementLoopAddLocation(NPC, -2075.92, -7.74, 279.34, 2, 0)
	MovementLoopAddLocation(NPC, -2076.62, -9.99, 284.7, 2, 0)
	MovementLoopAddLocation(NPC, -2077.53, -13.5, 291.69, 2, 0)
	MovementLoopAddLocation(NPC, -2078.47, -17.44, 298.94, 2, 0)
	MovementLoopAddLocation(NPC, -2079.32, -20.86, 305.44, 2, 0)
	MovementLoopAddLocation(NPC, -2080.17, -24.21, 311.98, 2, 0)
	MovementLoopAddLocation(NPC, -2081.04, -27.4, 318.63, 2, 0)
	MovementLoopAddLocation(NPC, -2081.96, -31.03, 325.69, 2, 0)
	MovementLoopAddLocation(NPC, -2082.81, -34.68, 332.2, 2, 0)
	MovementLoopAddLocation(NPC, -2083.62, -37.72, 338.47, 2, 0)
	MovementLoopAddLocation(NPC, -2086.96, -41.07, 345.01, 2, 0)
	MovementLoopAddLocation(NPC, -2090.75, -42.99, 349.42, 2, 0)
	MovementLoopAddLocation(NPC, -2093.65, -43.47, 350.21, 2, 0)
	MovementLoopAddLocation(NPC, -2098.73, -43.78, 348.45, 2, 0)
	MovementLoopAddLocation(NPC, -2103.65, -44.58, 346.74, 2, 0)
	MovementLoopAddLocation(NPC, -2108.42, -45.03, 345.09, 2, 0)
	MovementLoopAddLocation(NPC, -2108.45, -45.01, 344.71, 2, 0)
	MovementLoopAddLocation(NPC, -2101.85, -44.09, 345.28, 2, 0)
	MovementLoopAddLocation(NPC, -2094.57, -42.84, 345.91, 2, 0)
	MovementLoopAddLocation(NPC, -2087.64, -40.87, 344, 2, 0)
	MovementLoopAddLocation(NPC, -2081.4, -37.9, 340.14, 2, 0)
	MovementLoopAddLocation(NPC, -2075.06, -34.58, 336.21, 2, 0)
	MovementLoopAddLocation(NPC, -2068.83, -31.49, 332.36, 2, 0)
	MovementLoopAddLocation(NPC, -2061.96, -28.23, 328.11, 2, 0)
	MovementLoopAddLocation(NPC, -2055.58, -24.13, 324.16, 2, 0)
	MovementLoopAddLocation(NPC, -2048.92, -19.65, 320.04, 2, 0)
	MovementLoopAddLocation(NPC, -2042.23, -15.08, 315.9, 2, 0)
	MovementLoopAddLocation(NPC, -2036.29, -11.53, 312.22, 2, 0)
	MovementLoopAddLocation(NPC, -2035.24, -11.31, 312.47, 2, 0)
	MovementLoopAddLocation(NPC, -2037.91, -14.74, 318.52, 2, 0)
	MovementLoopAddLocation(NPC, -2041.23, -19.3, 326.05, 2, 0)
	MovementLoopAddLocation(NPC, -2046.5, -23.41, 330.53, 2, 0)
end

