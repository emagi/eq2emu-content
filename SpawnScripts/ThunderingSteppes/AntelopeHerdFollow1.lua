--[[
    Script Name    : SpawnScripts/ThunderingSteppes/AntelopeHerdFollow1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.04 05:08:45
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    --AddTimer(NPC, 2000, "offset")
    AddTimer(NPC, 6000, "movement")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC, Spawn)
	spawn(NPC, Spawn)
end

function movement(NPC, Spawn)
    local zone = GetZone(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 20 , y, z - 8 , 2, 25)
	MovementLoopAddLocation(NPC, x - 5 , y, z - 10, 2, 25)
	MovementLoopAddLocation(NPC, x - 20, y, z + 10 , 2, 25)
	MovementLoopAddLocation(NPC, x + 20 , y, z + -20 , 2, 25)
	MovementLoopAddLocation(NPC, x - 15 , y, z + 15 , 2, 25)
	MovementLoopAddLocation(NPC, x , y, z , 2, 25)
end

function swarm(NPC)
	local zone = GetZone(NPC)
	local controller = GetSpawnByLocationID(zone, 133793500)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 6 then
		    speed = 2
            MoveToLocation(NPC, leaderX + MakeRandomInt(-6, 6), leaderY, leaderZ + MakeRandomInt(-6, 6), speed)
	    end 
	end
	
	AddTimer(NPC, 4000, "swarm")	
end
    
    
    