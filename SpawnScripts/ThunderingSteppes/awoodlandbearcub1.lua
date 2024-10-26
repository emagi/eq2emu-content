--[[
    Script Name    : SpawnScripts/ThunderingSteppes/awoodlandbearcub1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.23 08:08:21
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 1000, "follow")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function follow(NPC)
	local zone = GetZone(NPC)
	local controller = GetSpawnByLocationID(zone, 133794277)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 5 then
		    speed = 2
            MoveToLocation(NPC, leaderX , leaderY, leaderZ , speed)
	    end 
	end
	
	AddTimer(NPC, 1500, "follow")	
end