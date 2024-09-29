--[[
    Script Name    : SpawnScripts/ThunderingSteppes/areefstalker1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.10 08:09:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 8000, "swarm")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function swarm(NPC)
	local zone = GetZone(NPC)
	local controller = GetSpawnByLocationID(zone, 133794483)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 6 then
		    speed = 4
            MoveToLocation(NPC, leaderX + MakeRandomInt(-5, 5), leaderY+ MakeRandomInt(-3, 3), leaderZ + MakeRandomInt(-5, 5), speed)
	    end 
	
	end
	
	AddTimer(NPC, 4000, "swarm")	
end