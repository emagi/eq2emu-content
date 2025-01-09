--[[
    Script Name    : SpawnScripts/Longshadow/aspiderhatchling.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.15 01:10:53
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    if GetSpawnLocationID(NPC) == 406177 or
        GetSpawnLocationID(NPC) == 405853 or
        GetSpawnLocationID(NPC) == 406036 or
        GetSpawnLocationID(NPC) == 133787022 or
        GetSpawnLocationID(NPC) == 133787023 or
        GetSpawnLocationID(NPC) == 133787024 then
        RandomMovement(NPC, Spawn, 6, -6, 2, 8, 15)
    elseif GetSpawnLocationID(NPC) == 405595 then
        AddTimer(NPC,MakeRandomInt(0,3500),"waypoints")
    end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -27.86, 4.13, 55.03, 6, math.random(11,15))
	MovementLoopAddLocation(NPC, -21.53, 4.00, 48.61, 6,  math.random(10,15))
	MovementLoopAddLocation(NPC, -26.84, 4.00, 47.38,6, math.random(10,15))
	MovementLoopAddLocation(NPC, -24.00, 4.41, 54.65, 6, math.random(10,15))
	MovementLoopAddLocation(NPC, -24.70, 4.00, 45.53, 6, math.random(10,15))
end


function respawn(NPC, Spawn)
    spawn(NPC)
end
