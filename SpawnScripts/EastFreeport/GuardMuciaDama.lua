--[[
    Script Name    : SpawnScripts/EastFreeport/GuardMuciaDama.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.22 02:01:40
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    AddTimer(NPC, 6000, "follow")
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn)
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
            MoveToLocation(NPC, leaderX + 2, leaderY, leaderZ, speed)
        elseif
            GetDistance(NPC, controller) > 10 then
            speed = 4
            MoveToLocation(NPC, leaderX + 2, leaderY, leaderZ, speed)
        end 
	end
	
	AddTimer(NPC, 1500, "follow")	
end