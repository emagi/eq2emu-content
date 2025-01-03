--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknightPath4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 10:02:22
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
	MovementLoopAddLocation(NPC, -2117.44, 1.23, -485, 2, 4)
	MovementLoopAddLocation(NPC, -2120.09, 0.5, -488.71, 2, 0)
	MovementLoopAddLocation(NPC, -2123.04, -0.31, -492.84, 2, 0)
	MovementLoopAddLocation(NPC, -2126.15, -1.16, -497.2, 2, 0)
	MovementLoopAddLocation(NPC, -2129.08, -1.93, -501.29, 2, 0)
	MovementLoopAddLocation(NPC, -2132.09, -2.87, -505.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2132.09, -2.87, -505.51, 2, 0)
	MovementLoopAddLocation(NPC, -2132.8, -3.32, -504.41, 2, 0)
	MovementLoopAddLocation(NPC, -2135.26, -5.1, -500.62, 2, 0)
	MovementLoopAddLocation(NPC, -2138.21, -7.35, -496.06, 2, 0)
	MovementLoopAddLocation(NPC, -2140.94, -9.58, -491.85, 2, 0)
	MovementLoopAddLocation(NPC, -2143.55, -11.6, -487.81, 2, 0)
	MovementLoopAddLocation(NPC, -2146.37, -13.75, -483.47, 2, 0)
	MovementLoopAddLocation(NPC, -2149.55, -15.67, -478.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2149.55, -15.67, -478.56, 2, 0)
	MovementLoopAddLocation(NPC, -2150.14, -15.7, -479.37, 2, 0)
	MovementLoopAddLocation(NPC, -2153.2, -16.1, -483.62, 2, 0)
	MovementLoopAddLocation(NPC, -2156.02, -16.52, -487.51, 2, 0)
	MovementLoopAddLocation(NPC, -2158.81, -16.96, -491.38, 2, 0)
	MovementLoopAddLocation(NPC, -2161.62, -17.43, -495.27, 2, 0)
	MovementLoopAddLocation(NPC, -2164.41, -18.36, -499.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2164.41, -18.36, -499.14, 2, 0)
	MovementLoopAddLocation(NPC, -2165.13, -18.44, -497.11, 2, 0)
	MovementLoopAddLocation(NPC, -2166.77, -18.97, -492.49, 2, 0)
	MovementLoopAddLocation(NPC, -2166.83, -19.36, -487.2, 2, 0)
	MovementLoopAddLocation(NPC, -2165.27, -19.46, -482.78, 2, 0)
	MovementLoopAddLocation(NPC, -2163.88, -19.68, -478.85, 2, 0)
	MovementLoopAddLocation(NPC, -2162.21, -19.94, -474.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2162.21, -19.94, -474.12, 2, 0)
	MovementLoopAddLocation(NPC, -2160.91, -19.66, -474.43, 2, 0)
	MovementLoopAddLocation(NPC, -2157.13, -18.74, -475.34, 2, 0)
	MovementLoopAddLocation(NPC, -2152.59, -17.08, -476.43, 2, 0)
	MovementLoopAddLocation(NPC, -2147.78, -15.32, -477.58, 2, 0)
	MovementLoopAddLocation(NPC, -2143.52, -13.76, -478.6, 2, 0)
	MovementLoopAddLocation(NPC, -2139.45, -11.45, -479.57, 2, 0)
	MovementLoopAddLocation(NPC, -2135.04, -8.82, -480.63, 2, 0)
	MovementLoopAddLocation(NPC, -2130.63, -6.17, -481.68, 2, 0)
	MovementLoopAddLocation(NPC, -2125.93, -3.52, -482.81, 2, 0)
	MovementLoopAddLocation(NPC, -2122.02, -1.35, -483.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2122.02, -1.35, -483.74, 2, 0)
	MovementLoopAddLocation(NPC, -2121.9, -1.64, -481.68, 2, 0)
	MovementLoopAddLocation(NPC, -2121.67, -2.48, -477.6, 2, 0)
	MovementLoopAddLocation(NPC, -2121.44, -3.5, -473.6, 2, 0)
	MovementLoopAddLocation(NPC, -2121.2, -5.01, -469.4, 2, 0)
	MovementLoopAddLocation(NPC, -2120.95, -6.55, -465.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2120.95, -6.55, -465.14, 2, 0)
	MovementLoopAddLocation(NPC, -2122.11, -7.07, -465.56, 2, 0)
	MovementLoopAddLocation(NPC, -2125.73, -8.58, -466.9, 2, 0)
	MovementLoopAddLocation(NPC, -2130.34, -10.51, -468.6, 2, 0)
	MovementLoopAddLocation(NPC, -2134.25, -12.22, -470.03, 2, 0)
	MovementLoopAddLocation(NPC, -2138.41, -13.82, -471.56, 2, 0)
	MovementLoopAddLocation(NPC, -2142.43, -14.6, -473.04, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2142.43, -14.6, -473.04, 2, 0)
	MovementLoopAddLocation(NPC, -2142.74, -15.12, -471.92, 2, 0)
	MovementLoopAddLocation(NPC, -2143.64, -16.59, -468.69, 2, 0)
	MovementLoopAddLocation(NPC, -2144.72, -18.42, -464.79, 2, 0)
	MovementLoopAddLocation(NPC, -2145.73, -19.65, -461.11, 2, 0)
	MovementLoopAddLocation(NPC, -2146.87, -19.95, -457, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2146.87, -19.95, -457, 2, 0)
	MovementLoopAddLocation(NPC, -2146.24, -19.81, -458.17, 2, 0)
	MovementLoopAddLocation(NPC, -2144.39, -19.41, -461.57, 2, 0)
	MovementLoopAddLocation(NPC, -2142.4, -17.66, -465.24, 2, 0)
	MovementLoopAddLocation(NPC, -2140.48, -15.59, -468.78, 2, 0)
	MovementLoopAddLocation(NPC, -2138.36, -13.37, -472.67, 2, 0)
	MovementLoopAddLocation(NPC, -2136.5, -11.22, -476.11, 2, 0)
	MovementLoopAddLocation(NPC, -2134.39, -8.69, -479.99, 2, 0)
	MovementLoopAddLocation(NPC, -2132.47, -6.78, -483.54, 2, 0)
	MovementLoopAddLocation(NPC, -2130.42, -5, -487.3, 2, 0)
	MovementLoopAddLocation(NPC, -2128.61, -3.53, -490.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2128.61, -3.53, -490.64, 2, 0)
	MovementLoopAddLocation(NPC, -2127.93, -3.4, -489.45, 2, 0)
	MovementLoopAddLocation(NPC, -2126.02, -3, -486.1, 2, 0)
	MovementLoopAddLocation(NPC, -2124.05, -2.58, -482.65, 2, 0)
	MovementLoopAddLocation(NPC, -2121.98, -2.29, -479.03, 2, 0)
	MovementLoopAddLocation(NPC, -2119.83, -2.15, -475.26, 2, 0)
	MovementLoopAddLocation(NPC, -2117.87, -2.02, -471.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2117.87, -2.02, -471.83, 2, 0)
	MovementLoopAddLocation(NPC, -2117.44, 1.23, -485, 2, 3)
end

