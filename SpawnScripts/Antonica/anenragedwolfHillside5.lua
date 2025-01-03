--[[
    Script Name    : SpawnScripts/Antonica/anenragedwolfHillside5.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:29
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
	MovementLoopAddLocation(NPC, -2081.24, -18.94, 300.92, 2, 0)
	MovementLoopAddLocation(NPC, -2080.24, -16.72, 296.86, 2, 0)
	MovementLoopAddLocation(NPC, -2078.74, -13.34, 290.76, 2, 0)
	MovementLoopAddLocation(NPC, -2076.77, -9.28, 282.75, 2, 0)
	MovementLoopAddLocation(NPC, -2074.89, -6.45, 275.07, 2, 0)
	MovementLoopAddLocation(NPC, -2073.14, -4.33, 267.98, 2, 0)
	MovementLoopAddLocation(NPC, -2071.41, -2.03, 260.91, 2, 0)
	MovementLoopAddLocation(NPC, -2071.93, -0.68, 257.21, 2, 0)
	MovementLoopAddLocation(NPC, -2074.28, 0, 252.22, 2, 0)
	MovementLoopAddLocation(NPC, -2077.06, 0.71, 246.3, 2, 0)
	MovementLoopAddLocation(NPC, -2079.93, 0.74, 240.21, 2, 0)
	MovementLoopAddLocation(NPC, -2082.87, 0.69, 233.95, 2, 0)
	MovementLoopAddLocation(NPC, -2086.05, 0.53, 227.2, 2, 0)
	MovementLoopAddLocation(NPC, -2088.93, 0.5, 221.07, 2, 0)
	MovementLoopAddLocation(NPC, -2092.05, 0.55, 214.44, 2, 0)
	MovementLoopAddLocation(NPC, -2093.83, 0.4, 212.59, 2, 0)
	MovementLoopAddLocation(NPC, -2099.82, -0.88, 211.56, 2, 0)
	MovementLoopAddLocation(NPC, -2105.74, -2.28, 210.55, 2, 0)
	MovementLoopAddLocation(NPC, -2111.45, -4.03, 209.58, 2, 0)
	MovementLoopAddLocation(NPC, -2116.98, -5.85, 208.63, 2, 0)
	MovementLoopAddLocation(NPC, -2120.29, -7.15, 209.11, 2, 0)
	MovementLoopAddLocation(NPC, -2122.33, -8.87, 213.86, 2, 0)
	MovementLoopAddLocation(NPC, -2124.9, -11.79, 219.88, 2, 0)
	MovementLoopAddLocation(NPC, -2127.42, -14.19, 225.76, 2, 0)
	MovementLoopAddLocation(NPC, -2130.22, -16.49, 232.32, 2, 0)
	MovementLoopAddLocation(NPC, -2132.82, -18.84, 238.39, 2, 0)
	MovementLoopAddLocation(NPC, -2135.66, -20.25, 245.03, 2, 0)
	MovementLoopAddLocation(NPC, -2135.42, -19.96, 247.53, 2, 0)
	MovementLoopAddLocation(NPC, -2132.74, -19.03, 253.01, 2, 0)
	MovementLoopAddLocation(NPC, -2130.09, -18.62, 258.43, 2, 0)
	MovementLoopAddLocation(NPC, -2126.28, -17.79, 263.18, 2, 0)
	MovementLoopAddLocation(NPC, -2121.48, -16.54, 267.46, 2, 0)
	MovementLoopAddLocation(NPC, -2116.46, -16.4, 271.93, 2, 0)
	MovementLoopAddLocation(NPC, -2112.01, -16.75, 275.9, 2, 0)
	MovementLoopAddLocation(NPC, -2107.11, -17.12, 280.57, 2, 0)
	MovementLoopAddLocation(NPC, -2105.94, -17.36, 282.65, 2, 0)
	MovementLoopAddLocation(NPC, -2105.95, -18.85, 288.23, 2, 0)
	MovementLoopAddLocation(NPC, -2105.96, -20.9, 294.34, 2, 0)
	MovementLoopAddLocation(NPC, -2105.96, -23.01, 300.17, 2, 0)
	MovementLoopAddLocation(NPC, -2105.97, -25.26, 305.45, 2, 0)
	MovementLoopAddLocation(NPC, -2105.98, -28.4, 312.12, 2, 0)
	MovementLoopAddLocation(NPC, -2105.88, -32.46, 318.12, 2, 0)
	MovementLoopAddLocation(NPC, -2105.69, -37.34, 324.21, 2, 0)
	MovementLoopAddLocation(NPC, -2105.59, -39.56, 327.3, 2, 0)
	MovementLoopAddLocation(NPC, -2105.43, -42.68, 332.72, 2, 0)
	MovementLoopAddLocation(NPC, -2107.1, -43.33, 333.33, 2, 0)
	MovementLoopAddLocation(NPC, -2111.21, -43.3, 330.34, 2, 0)
	MovementLoopAddLocation(NPC, -2115.88, -43.24, 326.96, 2, 0)
	MovementLoopAddLocation(NPC, -2120.46, -43.39, 323.64, 2, 0)
	MovementLoopAddLocation(NPC, -2125.13, -43.43, 320.25, 2, 0)
	MovementLoopAddLocation(NPC, -2130.13, -43.12, 316.63, 2, 0)
	MovementLoopAddLocation(NPC, -2134.83, -42.68, 313.22, 2, 0)
	MovementLoopAddLocation(NPC, -2138.93, -41.9, 310.25, 2, 0)
	MovementLoopAddLocation(NPC, -2138.93, -41.19, 308.8, 2, 0)
	MovementLoopAddLocation(NPC, -2135.2, -38.63, 305.66, 2, 0)
	MovementLoopAddLocation(NPC, -2130.63, -34.86, 301.8, 2, 0)
	MovementLoopAddLocation(NPC, -2126.17, -31.59, 298.03, 2, 0)
	MovementLoopAddLocation(NPC, -2121.87, -27.88, 294.39, 2, 0)
	MovementLoopAddLocation(NPC, -2117.18, -23.82, 290.44, 2, 0)
	MovementLoopAddLocation(NPC, -2112.29, -20.06, 286.31, 2, 0)
	MovementLoopAddLocation(NPC, -2107.7, -17.72, 282.43, 2, 0)
	MovementLoopAddLocation(NPC, -2102.86, -15.06, 278.35, 2, 0)
	MovementLoopAddLocation(NPC, -2097.81, -11.91, 274.09, 2, 0)
	MovementLoopAddLocation(NPC, -2094.95, -10.51, 273.12, 2, 0)
	MovementLoopAddLocation(NPC, -2090.94, -10.06, 276.4, 2, 0)
	MovementLoopAddLocation(NPC, -2086.13, -10.16, 280.36, 2, 0)
	MovementLoopAddLocation(NPC, -2081.34, -10.79, 284.29, 2, 0)
	MovementLoopAddLocation(NPC, -2074.85, -11.69, 289.61, 2, 0)
	MovementLoopAddLocation(NPC, -2068.5, -12.65, 294.82, 2, 0)
	MovementLoopAddLocation(NPC, -2062.51, -13.56, 299.74, 2, 0)
	MovementLoopAddLocation(NPC, -2057.21, -14.49, 304.09, 2, 0)
	MovementLoopAddLocation(NPC, -2051.83, -14.98, 308.5, 2, 0)
	MovementLoopAddLocation(NPC, -2045.89, -15.17, 313.38, 2, 0)
	MovementLoopAddLocation(NPC, -2039.96, -15.37, 318.25, 2, 0)
	MovementLoopAddLocation(NPC, -2033.31, -15.35, 323.71, 2, 0)
	MovementLoopAddLocation(NPC, -2027.53, -15.36, 328.45, 2, 0)
	MovementLoopAddLocation(NPC, -2021.86, -15.53, 333.1, 2, 0)
	MovementLoopAddLocation(NPC, -2015.45, -15.79, 338.36, 2, 0)
	MovementLoopAddLocation(NPC, -2009.42, -16.17, 343.31, 2, 0)
	MovementLoopAddLocation(NPC, -2005.73, -15.81, 345.01, 2, 0)
	MovementLoopAddLocation(NPC, -1999.57, -14.24, 345.71, 2, 0)
	MovementLoopAddLocation(NPC, -1992.71, -12.22, 346.48, 2, 0)
	MovementLoopAddLocation(NPC, -1985.85, -10.09, 347.26, 2, 0)
	MovementLoopAddLocation(NPC, -1978.59, -8.01, 348.08, 2, 0)
	MovementLoopAddLocation(NPC, -1969.46, -5.97, 349.11, 2, 0)
	MovementLoopAddLocation(NPC, -1939.31, 5.29, 325.75, 2, 0)
	MovementLoopAddLocation(NPC, -1937.71, 6.75, 319.59, 2, 0)
	MovementLoopAddLocation(NPC, -1935.97, 8.36, 312.95, 2, 0)
	MovementLoopAddLocation(NPC, -1934.35, 9.37, 306.76, 2, 0)
	MovementLoopAddLocation(NPC, -1932.89, 10.19, 301.16, 2, 0)
	MovementLoopAddLocation(NPC, -1931.26, 10.51, 294.93, 2, 0)
	MovementLoopAddLocation(NPC, -1929.55, 9.74, 288.38, 2, 0)
	MovementLoopAddLocation(NPC, -1930.65, 9.43, 286.32, 2, 0)
	MovementLoopAddLocation(NPC, -1937.21, 8.85, 284.3, 2, 0)
	MovementLoopAddLocation(NPC, -1943.66, 8.14, 282.31, 2, 0)
	MovementLoopAddLocation(NPC, -1950.26, 7.47, 280.28, 2, 0)
	MovementLoopAddLocation(NPC, -1957.06, 6.58, 278.18, 2, 0)
	MovementLoopAddLocation(NPC, -1962.78, 5.81, 276.42, 2, 0)
	MovementLoopAddLocation(NPC, -1968.61, 5.39, 274.62, 2, 0)
	MovementLoopAddLocation(NPC, -1975.49, 5.06, 272.5, 2, 0)
	MovementLoopAddLocation(NPC, -1981.99, 5.17, 270.5, 2, 0)
	MovementLoopAddLocation(NPC, -1985.63, 4.64, 271.19, 2, 0)
	MovementLoopAddLocation(NPC, -1992.58, 3.22, 275.13, 2, 0)
	MovementLoopAddLocation(NPC, -2000.64, 1.56, 279.7, 2, 0)
	MovementLoopAddLocation(NPC, -2007.8, 0.16, 283.77, 2, 0)
	MovementLoopAddLocation(NPC, -2014.83, -0.88, 287.75, 2, 0)
	MovementLoopAddLocation(NPC, -2021.36, -1.76, 291.46, 2, 0)
	MovementLoopAddLocation(NPC, -2028.19, -3.09, 295.34, 2, 0)
	MovementLoopAddLocation(NPC, -2035.52, -6.22, 299.49, 2, 0)
	MovementLoopAddLocation(NPC, -2042.56, -9.59, 303.48, 2, 0)
	MovementLoopAddLocation(NPC, -2049.9, -13.8, 307.65, 2, 0)
	MovementLoopAddLocation(NPC, -2056.38, -18.22, 311.33, 2, 0)
	MovementLoopAddLocation(NPC, -2062.55, -22.35, 314.82, 2, 0)
	MovementLoopAddLocation(NPC, -2069.23, -25.7, 318.62, 2, 0)
	MovementLoopAddLocation(NPC, -2075.98, -28.74, 322.45, 2, 0)
	MovementLoopAddLocation(NPC, -2082.26, -31.22, 326.01, 2, 0)
	MovementLoopAddLocation(NPC, -2083.63, -31.01, 325.3, 2, 0)
	MovementLoopAddLocation(NPC, -2089.3, -30.45, 322.33, 2, 0)
	MovementLoopAddLocation(NPC, -2095.6, -29.74, 319.03, 2, 0)
	MovementLoopAddLocation(NPC, -2101.14, -29.2, 316.13, 2, 0)
	MovementLoopAddLocation(NPC, -2107.74, -29.43, 312.67, 2, 0)
	MovementLoopAddLocation(NPC, -2104.2, -27.71, 312.13, 2, 0)
	MovementLoopAddLocation(NPC, -2098.15, -25.57, 311.26, 2, 0)
	MovementLoopAddLocation(NPC, -2092.02, -24.31, 310.39, 2, 0)
	MovementLoopAddLocation(NPC, -2085.88, -23.46, 309.51, 2, 0)
	MovementLoopAddLocation(NPC, -2079.15, -22.43, 308.54, 2, 0)
	MovementLoopAddLocation(NPC, -2081.24, -18.94, 300.92, 2, 0)
end