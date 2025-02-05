--[[
    Script Name    : SpawnScripts/ThunderingSteppes/apirateDrinna2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.01 09:10:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ChooseClass(NPC)
    human(NPC)
    AddTimer(NPC, 6000, "Drinna")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Drinna(NPC)
	local zone = GetZone(NPC)
	local controller = GetSpawnByLocationID(zone, 133794770)
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
	
	AddTimer(NPC, 1500, "Drinna")	
end

function ChooseClass(NPC, Spawn)
    SetClass = MakeRandomInt(1,2)
    if SetClass == 1 then
        SpawnSet(NPC, "class", 3) -- Guardian
        --Set spell list here
    elseif SetClass == 2 then
        SpawnSet(NPC, "class", 4) -- Berserker
        --Set spell list here
    end
end