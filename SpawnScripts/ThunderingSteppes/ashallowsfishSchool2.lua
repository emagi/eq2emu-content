--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ashallowsfishSchool2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.12 12:08:23
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
	local controller = GetSpawnByLocationID(zone, 133793713)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 5 then
		    speed = 5
            MoveToLocation(NPC, leaderX + MakeRandomInt(-4, 4), leaderY+ MakeRandomInt(-2, 2), leaderZ + MakeRandomInt(-4, 4), speed)
	    end 
	end
	
	AddTimer(NPC, 4000, "swarm")	
end