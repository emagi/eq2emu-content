--[[
    Script Name    : SpawnScripts/OutpostOverlord/atrainedwolf.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.27 01:08:33
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
	AddTimer(NPC, 500, "followmaster")
end

function followmaster(NPC, Spawn)
	local zone = GetZone(NPC)
	local wolfmasterplacement = GetSpawnByLocationID(zone, 394954)
	local sli = GetSpawnLocationID(NPC)
    if sli == 394887 then
		SetFollowTarget(NPC, wolfmasterplacement)
		if not IsFollowing(NPC) then
			SetSpeed(NPC , 1)
			ToggleFollow(NPC)
		end
    end
	
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	
end

function respawn(NPC)

end

