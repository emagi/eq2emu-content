--[[
    Script Name    : SpawnScripts/ThunderingSteppes/swarm1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.01 12:08:57
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
	local controller = GetSpawnByLocationID(zone, 133793362)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 5 then
		    speed = 5
            MoveToLocation(NPC, leaderX + MakeRandomInt(-3, 3), leaderY, leaderZ + MakeRandomInt(-3, 3), speed)
	    end 
	end
	
	AddTimer(NPC, 4000, "swarm")	
end