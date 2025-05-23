--[[
    Script Name    : SpawnScripts/NektulosClassic/aDragoonPatrol2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.22 09:05:22
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "follow")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function follow(NPC)
	local zone = GetZone(NPC)
	local controller = GetSpawnByLocationID(zone, 133796948)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 2 and GetDistance(NPC, controller) <= 8 then
		    speed = 2
            MoveToLocation(NPC, leaderX + 2, leaderY, leaderZ, speed)
        elseif
            GetDistance(NPC, controller) > 9 then
            speed = 4
            MoveToLocation(NPC, leaderX + 2, leaderY, leaderZ, speed)
        end 
	end
	
	AddTimer(NPC, 1500, "follow")	
end
