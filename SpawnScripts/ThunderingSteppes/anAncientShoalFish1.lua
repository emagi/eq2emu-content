--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anAncientShoalFish1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.11 09:08:37
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(155 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(275 + dmgMod))
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
	local controller = GetSpawnByLocationID(zone, 133793703)
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