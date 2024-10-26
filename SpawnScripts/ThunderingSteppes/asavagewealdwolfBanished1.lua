--[[
    Script Name    : SpawnScripts/ThunderingSteppes/asavagewealdwolfBanished1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.02 02:10:24
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "Banished")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Banished(NPC)
	local zone = GetZone(NPC)
	local controller = GetSpawnByLocationID(zone, 133794781)
    local leaderX = GetX(controller)
    local leaderY = GetY(controller)
    local leaderZ = GetZ(controller)
    local speed = 2
        
    if  controller ~=nil and not IsInCombat(NPC) then   
	    if GetDistance(NPC, controller) >= 2 and GetDistance(NPC, controller) <= 8 then
		    speed = 2
            MoveToLocation(NPC, leaderX, leaderY, leaderZ + 3, speed)
        elseif
            GetDistance(NPC, controller) > 10 then
            speed = 4
            MoveToLocation(NPC, leaderX, leaderY, leaderZ + 3, speed)
        end 
	end
	
	AddTimer(NPC, 1500, "Banished")	
end