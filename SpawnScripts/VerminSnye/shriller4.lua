--[[
	Script Name		:	shriller4.lua
	Script Purpose	:	Waypoint Path for shriller4.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 07:09:40 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 245.95, -7.05, -38.48, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 245.02, -6.76, -50.92, 2, 0)
	MovementLoopAddLocation(NPC, 237.73, -6.49, -62.28, 2, 0)
	MovementLoopAddLocation(NPC, 237.39, -6.86, -79.89, 2, 0)
	MovementLoopAddLocation(NPC, 246.31, -6.86, -79.1, 2, 0)
	MovementLoopAddLocation(NPC, 246.83, -6.86, -104.98, 2, 0)
	MovementLoopAddLocation(NPC, 243.22, -6.86, -119.91, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 242.82, -6.86, -133.61, 2, 0)
	MovementLoopAddLocation(NPC, 241.12, -6.86, -139.71, 2, 0)
	MovementLoopAddLocation(NPC, 234.87, -6.86, -148.42, 2, 0)
	MovementLoopAddLocation(NPC, 234.58, -6.86, -152.41, 2, 0)
	MovementLoopAddLocation(NPC, 242.04, -6.86, -152.8, 2, 0)
	MovementLoopAddLocation(NPC, 248.33, -6.86, -172.13, 2, 0)
	MovementLoopAddLocation(NPC, 249.22, -6.72, -176.85, 2, 0)
	MovementLoopAddLocation(NPC, 257.95, -7.06, -196.14, 2, 0)
	MovementLoopAddLocation(NPC, 253.79, -6.96, -202.76, 2, 0)
	MovementLoopAddLocation(NPC, 239.25, -7.16, -203.95, 2, 0)
	MovementLoopAddLocation(NPC, 223.01, -7.01, -202.54, 2, 0)
	MovementLoopAddLocation(NPC, 212.91, -7.09, -188.94, 2, 0)
	MovementLoopAddLocation(NPC, 210.65, -7.09, -183.45, 2, 0)
	MovementLoopAddLocation(NPC, 209.63, -6.98, -170.88, 2, 0)
	MovementLoopAddLocation(NPC, 198.51, -7, -164.92, 2, 0)
	MovementLoopAddLocation(NPC, 179.55, -6.98, -165.11, 2, 0)
	MovementLoopAddLocation(NPC, 173.39, -6.99, -169.24, 2, 0)
	MovementLoopAddLocation(NPC, 169.82, -7.07, -177.25, 2, 0)
	MovementLoopAddLocation(NPC, 169.44, -6.94, -186.47, 2, 0)
	MovementLoopAddLocation(NPC, 169.5, -7.08, -171.91, 2, 0)
	MovementLoopAddLocation(NPC, 176.7, -7.07, -166.14, 2, 0)
	MovementLoopAddLocation(NPC, 187.99, -7.03, -164.29, 2, 0)
	MovementLoopAddLocation(NPC, 200.03, -7.01, -165.03, 2, 0)
	MovementLoopAddLocation(NPC, 208.82, -7.02, -171.28, 2, 0)
	MovementLoopAddLocation(NPC, 209.87, -7.07, -185.65, 2, 0)
	MovementLoopAddLocation(NPC, 224.39, -6.98, -200.64, 2, 0)
	MovementLoopAddLocation(NPC, 232.67, -7.12, -203.34, 2, 0)
	MovementLoopAddLocation(NPC, 252.01, -6.98, -203.42, 2, 0)
	MovementLoopAddLocation(NPC, 256.26, -6.91, -200.53, 2, 0)
	MovementLoopAddLocation(NPC, 256.66, -7.02, -194.42, 2, 0)
	MovementLoopAddLocation(NPC, 250.04, -7.03, -178.46, 2, 0)
	MovementLoopAddLocation(NPC, 248.32, -6.86, -172.95, 2, 0)
	MovementLoopAddLocation(NPC, 237.82, -6.86, -172.91, 2, 0)
	MovementLoopAddLocation(NPC, 237.56, -6.86, -157.66, 2, 0)
	MovementLoopAddLocation(NPC, 234.54, -6.86, -152.61, 2, 0)
	MovementLoopAddLocation(NPC, 234.44, -6.86, -135.03, 2, 0)
	MovementLoopAddLocation(NPC, 242.24, -6.86, -135.11, 2, 0)
	MovementLoopAddLocation(NPC, 242.93, -6.66, -129.25, 2, 0)
	MovementLoopAddLocation(NPC, 242.78, -6.69, -122.14, 2, 0)
	MovementLoopAddLocation(NPC, 248.72, -6.86, -90.36, 2, 0)
	MovementLoopAddLocation(NPC, 244.3, -6.86, -86.18, 2, 0)
	MovementLoopAddLocation(NPC, 237.89, -6.8, -79.13, 2, 0)
	MovementLoopAddLocation(NPC, 236.67, -6.49, -63.6, 2, 0)
	MovementLoopAddLocation(NPC, 245.24, -6.51, -50.26, 2, 0)
	MovementLoopAddLocation(NPC, 245.86, -7.02, -38.93, 2, 0)
	MovementLoopAddLocation(NPC, 229.7, -6.91, -39.65, 2, 0)
	MovementLoopAddLocation(NPC, 213.1, -6.61, -55.2, 2, 0)
	MovementLoopAddLocation(NPC, 185.94, -6.99, -54.23, 2, 0)
	MovementLoopAddLocation(NPC, 178.87, -7.04, -45.63, 2, 0)
	MovementLoopAddLocation(NPC, 171.22, -7.01, -44.16, 2, 0)
	MovementLoopAddLocation(NPC, 168.4, -7.01, -40.38, 2, 0)
	MovementLoopAddLocation(NPC, 150.33, -7.01, -42.74, 2, 0)
	MovementLoopAddLocation(NPC, 141.21, -6.85, -44.99, 2, 0)
	MovementLoopAddLocation(NPC, 122.64, -2.47, -63.61, 2, 0)
	MovementLoopAddLocation(NPC, 96.13, 0.04, -62.91, 2, 0)
	MovementLoopAddLocation(NPC, 122.64, -2.47, -63.61, 2, 0)
	MovementLoopAddLocation(NPC, 141.21, -6.85, -44.99, 2, 0)
	MovementLoopAddLocation(NPC, 150.33, -7.01, -42.74, 2, 0)
	MovementLoopAddLocation(NPC, 168.4, -7.01, -40.38, 2, 0)
	MovementLoopAddLocation(NPC, 171.22, -7.01, -44.16, 2, 0)
	MovementLoopAddLocation(NPC, 178.87, -7.04, -45.63, 2, 0)
	MovementLoopAddLocation(NPC, 185.94, -6.99, -54.23, 2, 0)
	MovementLoopAddLocation(NPC, 213.1, -6.61, -55.2, 2, 0)
	MovementLoopAddLocation(NPC, 229.7, -6.91, -39.65, 2, 0)
	MovementLoopAddLocation(NPC, 245.86, -7.02, -38.93, 2, 0)
	MovementLoopAddLocation(NPC, 245.24, -6.51, -50.26, 2, 0)
	MovementLoopAddLocation(NPC, 236.67, -6.49, -63.6, 2, 0)
	MovementLoopAddLocation(NPC, 237.89, -6.8, -79.13, 2, 0)
	MovementLoopAddLocation(NPC, 244.3, -6.86, -86.18, 2, 0)
	MovementLoopAddLocation(NPC, 248.72, -6.86, -90.36, 2, 0)
	MovementLoopAddLocation(NPC, 242.78, -6.69, -122.14, 2, 0)
	MovementLoopAddLocation(NPC, 242.93, -6.66, -129.25, 2, 0)
	MovementLoopAddLocation(NPC, 242.24, -6.86, -135.11, 2, 0)
	MovementLoopAddLocation(NPC, 234.44, -6.86, -135.03, 2, 0)
	MovementLoopAddLocation(NPC, 234.54, -6.86, -152.61, 2, 0)
	MovementLoopAddLocation(NPC, 237.56, -6.86, -157.66, 2, 0)
	MovementLoopAddLocation(NPC, 237.82, -6.86, -172.91, 2, 0)
	MovementLoopAddLocation(NPC, 248.32, -6.86, -172.95, 2, 0)
	MovementLoopAddLocation(NPC, 250.04, -7.03, -178.46, 2, 0)
	MovementLoopAddLocation(NPC, 256.66, -7.02, -194.42, 2, 0)
	MovementLoopAddLocation(NPC, 256.26, -6.91, -200.53, 2, 0)
	MovementLoopAddLocation(NPC, 252.01, -6.98, -203.42, 2, 0)
	MovementLoopAddLocation(NPC, 232.67, -7.12, -203.34, 2, 0)
	MovementLoopAddLocation(NPC, 224.39, -6.98, -200.64, 2, 0)
	MovementLoopAddLocation(NPC, 209.87, -7.07, -185.65, 2, 0)
	MovementLoopAddLocation(NPC, 208.82, -7.02, -171.28, 2, 0)
	MovementLoopAddLocation(NPC, 200.03, -7.01, -165.03, 2, 0)
	MovementLoopAddLocation(NPC, 187.99, -7.03, -164.29, 2, 0)
	MovementLoopAddLocation(NPC, 176.7, -7.07, -166.14, 2, 0)
	MovementLoopAddLocation(NPC, 169.5, -7.08, -171.91, 2, 0)
	MovementLoopAddLocation(NPC, 169.44, -6.94, -186.47, 2, 0)
	MovementLoopAddLocation(NPC, 169.82, -7.07, -177.25, 2, 0)
	MovementLoopAddLocation(NPC, 173.39, -6.99, -169.24, 2, 0)
	MovementLoopAddLocation(NPC, 179.55, -6.98, -165.11, 2, 0)
	MovementLoopAddLocation(NPC, 198.51, -7, -164.92, 2, 0)
	MovementLoopAddLocation(NPC, 209.63, -6.98, -170.88, 2, 0)
	MovementLoopAddLocation(NPC, 210.65, -7.09, -183.45, 2, 0)
	MovementLoopAddLocation(NPC, 212.91, -7.09, -188.94, 2, 0)
	MovementLoopAddLocation(NPC, 223.01, -7.01, -202.54, 2, 0)
	MovementLoopAddLocation(NPC, 239.25, -7.16, -203.95, 2, 0)
	MovementLoopAddLocation(NPC, 253.79, -6.96, -202.76, 2, 0)
	MovementLoopAddLocation(NPC, 257.95, -7.06, -196.14, 2, 0)
	MovementLoopAddLocation(NPC, 249.22, -6.72, -176.85, 2, 0)
	MovementLoopAddLocation(NPC, 248.33, -6.86, -172.13, 2, 0)
	MovementLoopAddLocation(NPC, 242.04, -6.86, -152.8, 2, 0)
	MovementLoopAddLocation(NPC, 234.58, -6.86, -152.41, 2, 0)
	MovementLoopAddLocation(NPC, 234.87, -6.86, -148.42, 2, 0)
	MovementLoopAddLocation(NPC, 241.12, -6.86, -139.71, 2, 0)
	MovementLoopAddLocation(NPC, 242.82, -6.86, -133.61, 2, 0)
	MovementLoopAddLocation(NPC, 243.22, -6.86, -119.91, 2, 0)
	MovementLoopAddLocation(NPC, 246.83, -6.86, -104.98, 2, 0)
	MovementLoopAddLocation(NPC, 246.31, -6.86, -79.1, 2, 0)
	MovementLoopAddLocation(NPC, 237.39, -6.86, -79.89, 2, 0)
	MovementLoopAddLocation(NPC, 237.73, -6.49, -62.28, 2, 0)
	MovementLoopAddLocation(NPC, 245.02, -6.76, -50.92, 2, 0)
	MovementLoopAddLocation(NPC, 245.95, -7.05, -38.48, 2, 0)
end


