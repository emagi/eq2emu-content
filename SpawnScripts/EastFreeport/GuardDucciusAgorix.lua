--[[
    Script Name    : SpawnScripts/EastFreeport/GuardDucciusAgorix.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.22 02:01:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
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
	local controller = GetSpawnByLocationID(zone, 390871)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 2 and GetDistance(NPC, controller) <= 8 then
		    speed = 2
            MoveToLocation(NPC, leaderX, leaderY, leaderZ + 2, speed)
        elseif
            GetDistance(NPC, controller) > 10 then
            speed = 4
            MoveToLocation(NPC, leaderX, leaderY, leaderZ + 2, speed)
        end 
	end
	
	AddTimer(NPC, 1500, "follow")	
end